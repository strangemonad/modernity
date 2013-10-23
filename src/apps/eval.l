; eval.l - modernity-1
;
; Originally started from eval.l in maru-2.1 - a maru
; evaluator written in the maru s-expression language
; by Ian Piumarta.
;
; It's since been adapted to change the core language.
; This moves away from the LISP-1 / common lisp isms
; and adapts things that we've learned are "good" for us
; be it better for pragmatics, software composability,
; concurrency, consistency. Many of the changes are ideas
; lifted from clojure and some from racket.
;
; Naming:
;
; maru-boostrap - the language supported by the boostrap evaluator
; eval.c in Ian's distribution or maru. If you don't have a binary
; for an evaluator, this is your starting point since it's written
; in C and can be compiled with a C compiler. The environments below
; require some verion of an interpreter.
;
; maru - the language defined by eval.l in Ian's distribution of maru.
; can be built from a maru-bootstrap of the same version.
;
; modernity - the language defined here.
;
; e.g. maru-bootstrap-2.1 would be the language supported by
; compiling eval.c from the maru-2.1 distribution.
;
; modernity-1 depends on maru-2.1
;
; Currently
; depends on emit.l to "compile" itself to assembly


; Language Changes from maru-2.1 -> modernity-1
; can be found in modernity-1.md


;; XXX TODO allow true false as forms rather than 'true 'false

; Debug forms - toggle the comments as needed and recompile
(define-form gcdebug prog
  ())
  ;`(let () ,@prog))

(define-form debug prog
  ())
  ;`(let () ,@prog))

(define-form evaluator-trace prog
  ())
  ;`(let () ,@prog))

(define-form safe prog
  ;())
  `(let () ,@prog))


;; Eval helpers that don't have a good place yet.
(define-form if-tagged-int (a b) b)

(define-function make-gc-protectors (vars)
  (map (lambda (v) (list 'gc_push_root (list 'address-of v))) vars))

(define-function make-gc-unprotectors (vars)
  (let ((result ()))
    (while (pair? vars)
      (set result (cons (list 'gc_pop_root (list 'address-of (car vars))) result))
      (set vars (cdr vars)))
    result))

(define-form gc-protect (vars . prog)
  `(let ()
     ,@(make-gc-protectors vars)
     (let ((__answer__ ,@prog))
       ,@(make-gc-unprotectors vars)
       __answer__)))

(define-function make-gc-let* (inits prog)
  (if (pair? inits)
      `((let (,(car inits)) (gc-protect (,(caar inits)) ,@(make-gc-let* (cdr inits) prog))))
      prog))

(define-form gc-let* (inits . prog) (car (make-gc-let* inits prog)))











(compile-begin)

; Parser stream buffer
(define-structure <buffer> (contents size position))


; A helper structure to manage source reading
; XXX The whole reader could become a more encapsulated OMeta object or something

(define-structure <reader> (source line col))
(def reader-state 0)

; Global externs
(def abort     (extern   'abort))
(def exit      (extern   'exit))
(def malloc    (extern   'malloc))
(def realloc   (extern   'realloc))
(def free      (extern   'free))
(def memset    (extern   'memset))
(def memcpy    (extern   'memcpy))
(def memmove   (extern   'memmove))
(def printf    (extern   'printf))
(def fprintf   (extern   'fprintf))
(def sprintf   (extern   'sprintf))
(def snprintf  (extern   'snprintf))
(def isatty    (extern   'isatty))

(def dlopen    (extern   'dlopen))
(def dlclose   (extern   'dlclose))
(def dlsym     (extern   'dlsym))


; Globals - will be setup on startup
(def arguments 0)
(def input     0)
(def stdin     0)
(def stdout    0)
(def stderr    0)

; Structure slots are all 32-bit (4 byte)
(define-form size-of-structure (type) (* 4 (array-at %structure-sizes (eval type))))


(define-function max (a b)   (if (> a b) a b))

(def trace_stack   0)
(def trace_depth   0)

(def die) ;; forward

(define-function fatal (reason)       (printf "\neval.k: %s\n" reason) (exit 1))
(define-function fatal1 (fmt arg)     (printf "\neval.k: ") (printf fmt arg)      (printf "\n") (die))
(define-function fatal2 (fmt arg brg) (printf "\neval.k: ") (printf fmt arg brg)  (printf "\n") (die))

(define-form k_error args
  `(let ()
     (printf "\neval.k: error: ")
     ; (print ,@args)
     ,@(map (lambda (arg) (list (if (string? arg) 'printf 'k_print) arg)) args)
     (printf "\n")
     (die)))


; GC ---------------------------------------------------------------
;
; The GC can be used to allocate memory for program structures
; via gc_malloc. Allocated memory has a <header> immediately before the
; base address of the structure.
;
; The GC allocates this memory from a pool of memory blocks it manages
; requesting and returning it to the host system.
; These blocks of GC memory also have a <header> at the start of each block.


; XXX TODO could be a GC object / structure
(def gc_quantum          (* 50 1024))
(def gc_frequency        32768)
(def gc_objects_live     0)
(def gc_bytes_used       0)
(def gc_bytes_free       0)
(def gc_roots            0)
(def gc_root_count       0)
(def gc_root_max         0)
(def gc_memory_base      0)
(def gc_memory_last      0)
(def gc_alloc_count      0)
(def gc_collection_count 0)


; Headers on all OOPs and memory blocks
; XXX could make memory block headers cheaper
;
; XXX How to implement union types and type constructors?
; just redifine header to have ctor + type?
; always have oop[0] be the ctor and other fields are oop[1]... ick
(define-structure <header>
                  (size
                   flags
                   next
                   type))

; Header flags
(define-form <header>-flags-used () 1)
(define-form <header>-flags-atom () 2)
(define-form <header>-flags-mark () 4)
(define-form <header>-flags-used+atom ()   (+ (<header>-flags-used) (<header>-flags-atom)))

(define-function header-flags-marked? (header-ptr)
  (let ((flags (<header>-flags header-ptr)))
    (& flags (<header>-flags-mark))))

(define-function header-flags-mark (header-ptr)
  (let ((flags (<header>-flags header-ptr)))
    (set (<header>-flags header-ptr) (| flags (<header>-flags-mark)))))

(define-function header-flags-atom? (header-ptr)
  (let ((flags (<header>-flags header-ptr)))
    (& flags (<header>-flags-atom))))

; oop->header
; oop ptr (address) to header ptr (address)
(defn oop->header (oop-ptr)
  (- oop-ptr (size-of-structure <header>)))

; header->oop
; header ptr (address) to oop ptr (address)
(defn header->oop (header-ptr)
  (+ header-ptr (size-of-structure <header>)))


; Manage a new block of memory
(define-function new_memory_block (size)
  (let ((header (malloc size))
        (sz (- size (size-of-structure <header>))))

    (or header (fatal "out of memory"))
    (set (<header>-size  header) sz)
    (set (<header>-flags header) 0)
    (set (<header>-next  header) header) ; self-linked list for now - until we alloc more

    (debug (printf "BRK header %p size %d (count/freq) %d/%d\n" header size gc_alloc_count gc_frequency))

    header))

; Initialize the gc with its first chunk
(define-function gc_initialise ()
  (let ((header-ptr (new_memory_block gc_quantum)))
    (set gc_memory_base header-ptr)
    (set gc_memory_last header-ptr)))

; Grow the managed chunks of memory
; - similar to gc_initialize
(define-function gc_grow_memory (size)
  (let ((brk (new_memory_block size)))
    (set (<header>-next brk) (<header>-next gc_memory_last))
    (set (<header>-next gc_memory_last) brk)))


; Protection
; Add the managed object to the root set.
(define-function gc_push_root (ptr)
  (and (= gc_root_count gc_root_max)
       (let* ((roots (malloc (* 4 (set gc_root_max (max 32 (* 2 gc_root_max)))))))
         (memcpy roots gc_roots (* 4 gc_root_count))
         (and gc_roots (free gc_roots))
         (set gc_roots roots)))
  (set-oop-at gc_roots gc_root_count ptr)
  (debug (printf "gc PUSH root %d at %p\n" gc_root_count ptr))
  (set gc_root_count (+ 1 gc_root_count)))

; Remove the managed object from the root set.
(define-function gc_pop_root (ptr)
  (or gc_root_count (fatal "root table underflow"))
  (set gc_root_count (- gc_root_count 1))
  (debug (printf "gc POP  root %d at %p\n" gc_root_count ptr))
  (or (= ptr (oop-at gc_roots gc_root_count)) (fatal "non-lifo root")))


; How big is the object - according to the GC
; (define-function gc_size (obj) (<header>-size (oop->header obj)))
(define-function gc_size (obj)   (<header>-size (- obj (size-of-structure <header>))))

; By the end of a mark_andtrace on obj,
; all object's reachable from obj will have
(define-function gc_mark_and_trace (obj)
  (debug (printf "gc_mark_and_trace obj %p header: %p\n"
                 obj
                 (oop->header obj)))
  (and obj
       (not (& 1 obj)) ; Object isn't a long - can't use is_long yet
       (let* ((header-ptr (oop->header obj)) ; prt strarts at header - that's what we allocated
              (flags (<header>-flags header-ptr)))

         (debug (printf "\tmark and trace %p flags %d\n" obj flags))
         (safe (or (& (<header>-flags-used) flags) (fatal1 "attempt to mark dead object %p" header-ptr)))

         ; (when (not (header-flags-marked? header-ptr))
         (or (& flags (<header>-flags-mark))
               (let ()
                 (header-flags-mark header-ptr)
                 ; (set (<header>-flags header-ptr) (| flags (<header>-flags-mark)))
                 ; (when (not (header-flags-atom? header-ptr))
                 (or (& flags (<header>-flags-atom))
                       ; iterate over the subsequent oops in this oop's fields
                       ; and recursively gc_mark_and_trace those
                       (let ((slot-count (>> (<header>-size header-ptr) 2))) ; XXX why 2x?
                         (debug (printf "\tmark header:%p size: %d slot-count: %d type: %d\n" header-ptr (<header>-size header-ptr) slot-count (<header>-type header-ptr)))
                         (while slot-count
                           (set slot-count (- slot-count 1))
                           (debug (printf "\t@%d %p\n" slot-count (oop-at obj slot-count)))
                           (gc_mark_and_trace (oop-at obj slot-count))))))))))

; Scan through the managed memory chunks and update the GC state.
; Needs to come after a gc_mark_and_trace.
(define-function gc_sweep ()
  (debug (printf "gc_sweep\n"))
  (let ((header-ptr gc_memory_base)
    (nobjs 0)
    (nused 0)
    (nfree 0))
    (while header-ptr
      (debug (printf "\tsweep? %d %p + %d\n" (<header>-flags header-ptr) header-ptr (<header>-size header-ptr)))

      (let ((flags (<header>-flags header-ptr))
            (size  (<header>-size header-ptr)))
        (if (header-flags-marked? header-ptr)
            (let ()
              (set nused (+ nused size))
              (set nobjs (+ nobjs 1))

              ; We were able to reach this memory block -> unmark it.
              (set (<header>-flags header-ptr) (^ flags (<header>-flags-mark))))

            (let ()
              ; else, we're no longer in use
              (debug (printf "\tcollect %p %d\n" header-ptr size))
              (set nfree (+ nfree size))
              (set (<header>-flags header-ptr) 0))))

      (set header-ptr (<header>-next header-ptr))
      (when (= gc_memory_base header-ptr)
            ; We've wrapped back around to the base memory chunk
            ; break out of the loop
            (set header-ptr 0)))

    (set gc_objects_live nobjs)
    (set gc_bytes_used nused)
    (set gc_bytes_free nfree)

    (debug (printf "\tGC: %d used, %d free, %d allocations\n" nused nfree gc_alloc_count))))


; gc_gcollect - top-level controller for the garbage collection
;
; - iterates the gc_roots (all oop instances with <header> structures
;   right before in memory
; - kicks of a mark and trace for the first slot of each root object
; - runs a sweep to handle the results of the mark and trace
; - resets alloc counters
(define-function gc_gcollect ()
  (debug (printf "gc_gcollect\n"))
  (gcdebug
    (or (& 1023 (set gc_collection_count (+ gc_collection_count 1)))
        (fprintf stderr "%d collections\n" gc_collection_count 1)))
  (let ((i 0))
    ; XXX TODO beter iter tools
    (while (< i gc_root_count)
      (debug
        (let ((ptr (oop-at gc_roots i)))
          (printf "\ngc_gcollect...\n")
          (printf "\tmark gc root %d : %p -> %p\n" i ptr (oop-at ptr 0))))

      (gc_mark_and_trace (oop-at (oop-at gc_roots i) 0))
      (set i (+ 1 i))))
  (gc_sweep)
  (set gc_alloc_count 0))


; gc_malloc
;
; Does all the dirty work
; - growing things as needed
; - kicking of a gc as needed
(define-function gc_malloc (size)
  (debug (printf "gc_malloc size: %d\n" size))

  ; XXX Don't understand the rounding down
  (set size (& -4 (+ 3 size)))

  ; Possibly do a collect before the next malloc
  (when (= gc_alloc_count gc_frequency)
        (gc_gcollect))

  (let* ((first (<header>-next gc_memory_last))
         (chunk first)
         (ssize (+ size (size-of-structure <header>))))

    (while 1
      (while
 (let ()
   (debug (printf "alloc? %d %p %p [%p] %d >= %d %d\n" (<header>-flags chunk) chunk (<header>-next chunk) first (<header>-size chunk) size (<= size (<header>-size chunk))))
   (if (= 0 (<header>-flags chunk))
       (let ((csize (<header>-size chunk)))
   (while (and (= 0 (<header>-flags (<header>-next chunk)))
               (= (<header>-next chunk) (+ chunk (+ (size-of-structure <header>) csize))))
     (let ((next (<header>-next chunk)))
       (set (<header>-next chunk) (<header>-next next))
       (set csize (set (<header>-size chunk) (+ csize (+ (size-of-structure <header>) (<header>-size next)))))
       (and (= next gc_memory_last) (set gc_memory_last chunk))))

   (if (or (< ssize csize) (= size csize))
       (let ()
         (debug (printf "\tcsize %d\n" csize))
         (and (> csize ssize)
        (let ((split (+ chunk ssize)))
          (debug (printf "\tsplit %d: %p + %d -> %p + %d\n" csize chunk size split (- csize (+ size (size-of-structure <header>)))))
          (set (<header>-size  split) (- csize (+ size (size-of-structure <header>))))
          (set (<header>-flags split) 0)
          (set (<header>-next  split) (<header>-next chunk))
          (set (<header>-size  chunk) size)
          (set (<header>-next  chunk) split)
          (set csize size)))
         (set (<header>-flags chunk) (<header>-flags-used))
         (set gc_memory_last chunk)
         (debug (printf "\talloc chunk %p\n" chunk))
         (let ((obj (+ chunk (size-of-structure <header>))))
     (memset obj 0 csize)
     (set gc_alloc_count (+ gc_alloc_count 1))
     (return obj))))))
   (!= first (set chunk (<header>-next chunk)))))
     (gc_grow_memory (max (+ (size-of-structure <header>) size) gc_quantum)))))

(define-function gc_malloc_atomic (size)
  (let* ((obj (gc_malloc size)))
    ; (set (<header>-flags (- obj (size-of-structure <header>))) (<header>-flags-used+atom))
    (set (<header>-flags (oop->header obj)) (<header>-flags-used+atom))
    obj))

; Runtime defs ----------------------------------------------------------------

(def strlen  (extern 'strlen))
(def strcmp  (extern 'strcmp))
(def strdup  (extern 'strdup))
(def strtoul (extern 'strtoul))
(def putc    (extern 'putc))
(def getc    (extern 'getc))
(def ungetc  (extern 'ungetc))
(def fopen   (extern 'fopen))
(def fdopen  (extern 'fdopen))
(def fclose  (extern 'fclose))
(def fwrite  (extern 'fwrite))
(def fflush  (extern 'fflush))
(def fscanf  (extern 'fscanf))

; Parser stream defs
(def EOF   -1)
(def DONE  -4)   ;; cannot be the same as a tagged immediate

; Types
; blah, must be kept in sync with the build in types ordering
; with boot.l (and hence the eval.c version)
(def <undefined> 0)
(def <data>      1)
(def <long>      2)
(def <double>    3)
(def <string>    4)
(def <symbol>    5)
(def <pair>      6)
(def <_array>    7)
(def <array>     8)
(def <expr>      9)
(def <form>      10)
(def <fixed>     11)
(def <subr>      12)
(def <variable>  13)
(def <env>       14)
(def <context>   15)


; Globals - set on startup
(def symbols            0)
(def globals            0)
(def expanders          0)
(def encoders           0)
(def evaluators         0)
(def applicators        0)

; Global symbols - set on startup
(def s_true             0)
(def s_false            0)
(def s_else             0)
(def s_dot              0)
(def s_def              0)
(def s_set              0)
(def s_fn               0)
(def s_let              0)
(def s_quote            0)
(def s_quasiquote       0)
(def s_unquote          0)
(def s_unquote_splicing 0)
(def s_expanders        0)
(def s_encoders         0)
(def s_evaluators       0)
(def s_applicators      0)

(def s_empty_pair  0)

; Global functions - set on startup
(def f_set              0)
(def f_quote            0)
(def f_fn               0)
(def f_let              0)
(def f_def              0)

(def opt_verbose        0)


; Boolean valuation
;
; Converts modernity values to their appropriate boolean
; valuation in the host maru environment.
;
; - maru treats () as false and anything else as true
;
; we want 'f to be false and everything else as true -
; including the empty list. This is inspired by clojure
(defn truthiness (val)
  (if (or (= s_false val))
      ()
      s_true))

(define-function new-bits (type size)
  (let ((obj (gc_malloc_atomic size)))
    (set (oop-at obj -1) type) ; XXX vs oop->header get <header>-type
    obj))

(define-function new-oops (type size)
  (let ((obj (gc_malloc size)))
    (set (oop-at obj -1) type)
    obj))


;; XXX TODO all these new-<foo> guys need to have a better initialization story
;; as a first pass, always disallow nil (i.e. oop-at -1 is <undefined>)
;; beyond that, provide a better way for creating types beyond `structure`
;; that allows something like GADTs.
;; then all stuct ctors must always have all args passed in and non-nil
(define-function new-<long> (bits)
  (if-tagged-int
    (| (<< bits 1) 1)
    (let ((obj (new-bits <long> (size-of-structure <long>))))
      (set (<long>-_bits obj) bits)
      obj)))

(define-function _new-<string> (len)
  (let ((str (new-oops <string> (size-of-structure <string>))))
    (gc-protect (str)
      (set (<string>-size  str) (new-<long> len))
      (set (<string>-_bits str) (gc_malloc_atomic (+ len 1)))
      str)))

(define-function new-<string> (cstr)
  (let ((len (strlen cstr)))
    (let ((obj (_new-<string> len)))
      (memcpy (<string>-_bits obj) cstr len)
      obj)))

(define-function new-<symbol> (cstr)
  (let ((obj (new-bits <symbol> (size-of-structure <symbol>))))
    (set (<symbol>-_bits obj) (strdup cstr))
    obj))

;; pair type is
;; head -> value
;; tail -> Maybe pair i.e. a (head, tail) pair or the empty pair
;; XXX TODO gadt support
(define-function new-<pair> (head tail)
  ;; `unless` is in maru-2.1 semantics
  ;; Since '() in the maru reader produces a nil value
  ;; we adapt it here by converting it to the empty list symbol
  ;; XXX TODO don't allow creating pairs with nil heads.
  ;; allow empty pair heads? e.g. a pair of 2 empty pairs '(()()) -> piano arithmetic style
  ;; how to know if we're at the end of *THIS* pair then?
  ;(unless head (fatal "attempt to create a pair with an undefined head"))
  (let ((obj (new-oops <pair> (size-of-structure <pair>))))
    (set (<pair>-head obj) head)
    (set (<pair>-tail obj) (or tail s_empty_pair))
    obj))

(define-function new-<array> (size)
  (let ((cap (if size size 1))
        (arr (new-oops <array> (size-of-structure <array>))))
    (gc-protect (arr)
      (set (<array>-size   arr) (new-<long> size))
      (set (<array>-_array arr) (new-oops <_array> (* 4 cap)))
      arr)))

(define-function new-<expr> (defunc ctx)
  (let ((obj (new-oops <expr> (size-of-structure <expr>))))
    (set (<expr>-defunc obj) defunc)
    (set (<expr>-ctx  obj) ctx)
    obj))

(define-function new-<form> (func sym)
  (let ((obj (new-oops <form> (size-of-structure <form>))))
    (gc-protect (obj)
      (set (<form>-function obj) func)
      (set (<form>-symbol   obj) sym)
      obj)))

(define-function new-<fixed> (func)
  (let ((obj (new-oops <fixed> (size-of-structure <fixed>))))
    (gc-protect (obj)
      (set (<fixed>-function obj) func)
      obj)))

(define-function new-<subr> (_imp _name)
  (let ((obj (new-bits <subr> (size-of-structure <subr>))))
    (gc-protect (obj)
      (set (<subr>-_imp  obj) _imp)
      (set (<subr>-_name obj) _name)
      obj)))

(define-function new-<variable> (name value env index)
  (let ((obj (new-oops <variable> (size-of-structure <variable>))))
    (gc-protect (obj)
      (set (<variable>-name  obj) name)
      (set (<variable>-value obj) value)
      (set (<variable>-env   obj) env)
      (set (<variable>-index obj) (new-<long> index))
      obj)))

(defn new-<reader> ()
  (new-oops <reader> (size-of-structure <reader>)))

(define-form get-type (arg)
  `(let ((__arg__ ,arg))
     (safe (and __arg__
                (not (& __arg__ 1)) ; arg isn't a long
                (or (& (<header>-flags-used) (<header>-flags (- __arg__ (size-of-structure <header>))))
                    (fatal1 "attempt to access dead object %p of type %d" __arg__ (oop-at __arg__ -1)))))
     (if __arg__
         (if (& __arg__ 1)
             <long>
             (oop-at __arg__ -1)) ; XXX why not just do (<header>-type (oop->header __arg__))?
       <undefined>)))

(define-form is (type arg)
  `(= ,type (get-type ,arg)))

(define-function type_check_fail (exp act)
  (fatal2 "illegal type: expected %d got %d" exp act))

(define-form get (type field object)
  `(let ((__obj__ ,object))
     (safe (let ((t (get-type __obj__))) (or (= ,type t) (type_check_fail ,type t))))
     (,(concat-symbol (concat-symbol type '-) field) __obj__)))

(define-form put (type field object value)
  `(let ((__obj__ ,object))
     (safe (let ((t (get-type __obj__))) (or (= ,type t) (type_check_fail ,type t))))
     (set (,(concat-symbol (concat-symbol type '-) field) __obj__) ,value)))

; Longs
(define-form is_long  (obj) (if-tagged-int   `(&  ,obj 1)   `(is <long> ,obj)))
(define-form get_long (obj) (if-tagged-int   `(>> ,obj 1)   `(get <long> _bits ,obj)))

; Lists
(define-form get_head (obj)   `(oop-at ,obj 0))
(define-form get_tail (obj)   `(oop-at ,obj 1))
(define-form set_head (obj val)   `(set-oop-at ,obj 0 ,val))
(define-form set_tail (obj val)   `(set-oop-at ,obj 1 ,val))

; Envs
(define-function new-<env> (parent level offset)
  (let ((obj (new-oops <env> (size-of-structure <env>))))
    (gc-protect (obj)
      (set (<env>-parent   obj) parent)
      (set (<env>-level    obj) (new-<long> (if parent (+ (get_long (get <env> level parent)) level) 0)))
      (set (<env>-offset   obj) (new-<long> offset))
      (set (<env>-bindings obj) (new-<array> 0))
      obj)))

; TODO these happen often - object pool?
(define-function new-<context> (home env)
  (let ((obj (new-oops <context> (size-of-structure <context>))))
    (gc-protect (obj)
      (set (<context>-home     obj) home)
      (set (<context>-env      obj) env)
      (set (<context>-bindings obj) (new-<array> 0))
      obj)))

(define-function is_global (var)
  (let ((env (get <variable> env var)))
    (and env (= 0 (get_long (get <env> level env))))))


;;;  New runtime definition -------------------------------------------

; String funcs
(define-function k_string_length (obj)   (get_long (get <string> size obj)))

; List funcs
(define-function k_car   (list) (and (is <pair> list) (get_head list)))
(define-function k_cdr   (list) (and (is <pair> list) (get_tail list)))
(define-function k_caar  (list) (k_car (k_car list)))
(define-function k_cadr  (list) (k_car (k_cdr list)))
(define-function k_cddr  (list) (k_cdr (k_cdr list)))
(define-function k_caddr (list) (k_car (k_cdr (k_cdr list))))

(define-function k_concat (head tail)
  (if (is <pair> head)
      (let ()
        (set tail (k_concat (get_tail head) tail))
        (gc-protect (tail)
          (new-<pair> (get_head head) tail)))
      tail))

; Array funcs
(define-function k_array_length (obj)
  (get_long (get <array> size obj)))

(define-function k_array_at (obj idx)
  (and (is <array> obj)
       (let* ((elts (get <array> _array obj))
        (size (get_long (get <array> size obj))))
   (and (<= 0 idx) (< idx size)
        (oop-at elts idx)))))

(define-function k_set_array_at (obj idx val)
  (and (is <array> obj)
       (let* ((elts (get <array> _array obj))
              (size (get_long (get <array> size obj))))
         (and (<= 0 idx)
              (let ()
                (or (< idx size)
                    (let ((cap (/ (gc_size elts) 4)))
                      (while (<= cap idx) (set cap (* cap 2)))
                      (gc-protect (obj)
                        (let ((oops (new-oops <_array> (* 4 cap))))
                          (memcpy oops elts (* size 4))
                          (set elts (put <array> _array obj oops)))
                        (put <array> size obj (new-<long> (+ 1 idx))))))
                (set-oop-at elts idx val))))))

(define-function k_array_append (array val)
  (k_set_array_at array (k_array_length array) val))

(define-function k_array_insert (obj index value)
  (let ((len (k_array_length obj)))

    (k_array_append obj value)
    (and (< index len)
         (let ((elts (get <array> _array obj))
               (oops (+ elts (* 4 index))))

           (memmove (+ 4 oops) oops (* 4 (- len index))))))
  (k_set_array_at obj index value))


; Blah why aren't buffers GC'ed
(define-function new_buffer ()
  (let ((buf (malloc (size-of-structure <buffer>))))
    (set (<buffer>-contents buf) (malloc 32))
    (set (<buffer>-size     buf) 32)
    (set (<buffer>-position buf) 0)
    buf))

(define-function buffer_delete (buf)
  (free (<buffer>-contents buf))
  (free buf))

(define-function buffer_grow (buf)
  (let* ((size     (<buffer>-size buf))
   (contents (malloc (* 2 size))))
    (memcpy contents (<buffer>-contents buf) size)
    (free (<buffer>-contents buf))
    (set (<buffer>-contents buf) contents)
    (set (<buffer>-size buf) (* 2 size))))

(define-function buffer_append (buf c)
  (and (= (<buffer>-position buf) (<buffer>-size buf))
       (buffer_grow buf))
  (let ((posn (<buffer>-position buf)))
    (set-string-at (<buffer>-contents buf) posn c)
    (set (<buffer>-position buf) (+ 1 posn))))

(define-function buffer_append_all (buf s)
  (let ((i 0)
  (c 0))
    (while (set c (string-at s i))
      (buffer_append buf c)
      (set i (+ 1 i)))))

(define-function buffer_contents (buf)
  (buffer_append buf 0)
  (set (<buffer>-position buf) (- (<buffer>-position buf) 1))
  (<buffer>-contents buf))


; oop printing - by type
; could be a method?

(define-function do_print (obj storing)
  (let ((type (get-type obj)))
    (cond
      ((= type <undefined>)   (printf "nil"))
      ((= type <long>)        (printf "%d" (get_long obj)))
      ((= type <string>)      (let ((bits (get <string> _bits obj)))
                                (if (not storing)
                                    (printf "%s" bits)
                                    (let ((i 0)
                                          (c 0))
                                      (printf "\"")
                                      (while (set c (string-at bits i))
                                        (if (and (<= 32 c) (<= c 126))
                                            (cond
                                              ((= c ?\") (printf "\\\""))
                                              ((= c ?\\) (printf "\\\\"))
                                              (else      (printf "%c" c)))
                                            (printf "\\%03o" c))
                                        (set i (+ 1 i)))
                                        (printf "\"")))))
      ((= type <symbol>)      (printf "%s" (get <symbol> _bits obj)))

      ((= type <pair>)      (let ()
          (printf "(")
          (while (and (is <pair> obj) (!= globals obj))
            (do_print (get_head obj) storing)
            (and (is <pair> (set obj (get_tail obj))) (printf " ")))
          (if (= globals obj)
              (printf "<globals>")

              ;else
              (when (and obj (not (= s_empty_pair obj)))
                 (let ()
                   (printf " . ")
                   (do_print obj storing))))
          (printf ")")))

      ((= type <array>)      (let ((len (k_array_length obj)))
          (printf "Array(")
          (for (i 0 len)
            (and i (printf " "))
            (do_print (k_array_at obj i)))
          (printf ")")))
      ((= type <expr>)      (let ()
          (printf "Expr(")
          (do_print (k_car (get <expr> defunc obj)) storing)
          (printf ")")))
      ((= type <form>)      (let ()
          (printf "Form(")
          (do_print (get <form> function obj) storing)
          (printf ",")
          (do_print (get <form> symbol   obj) storing)
          (printf ")")))
      ((= type <fixed>)      (let ()
          (printf "Fixed(")
          (do_print (get <fixed> function obj) storing)
          (printf ")")))
      ((= type <subr>)      (printf "Subr(%s)" (get <subr> _name obj)))
      ((= type <variable>)   (let ((env (get <variable> env obj)))
           (do_print (get <variable> name obj))
          (and env
               (printf ".%d+%d"
                 (get_long (get <env> level (get <variable> env obj)))
                 (get_long (get <variable> index obj))))))
      ((= type <env>)      (let ()
           (printf "Env<%p - %d>" obj (get_long (get <env> level obj)))))
      ((= type <context>)   (let ()
          (printf "Context<%p E:" obj) (do_print (get <context> env obj))
          (printf " H:%p" (get <context> home obj))
          (printf " C:%p" (get <context> callee obj))
          (printf ">")))
      (else         (printf "<type:%d>" type)))))

(define-function k_print   (obj) (do_print obj 0))
(define-function k_println (obj) (do_print obj 0) (printf "\n"))
(define-function k_dump    (obj) (do_print obj 1))
(define-function k_dumpln  (obj) (do_print obj 1) (printf "\n"))


(define-form println args
  `(let ()
    ,@(map (lambda (arg) (list (if (string? arg) 'printf 'k_print) arg)) args)
    (printf "\n")
    (fflush stdout)))

(define-form log-debug args
  `(if (> opt_verbose 3) (println ,@args)))

; Runtime debug
(defn k_dump_stack ()
  (printf "stack: \n")
  (let ((i trace_depth))
    (while (<= 0 (set i (- i 1)))
      (printf "%3d: " i) (k_dumpln (k_array_at trace_stack i)))))

; Aborting
(set die
     (fn ()
       (k_dump_stack)
       (exit 1)))

(defn k_long_repr (l)
  ;; Blah totally wrong on so many levels
  ;; depending on libc for itoa
  ;; malloc'ed buffer
  ;; ignoring wide chars
  (let ((buf (malloc 22)))
    (snprintf buf 22 "%ld" (get_long l))
    (let ((result (new-<string> buf)))
      (free buf)
      result)))

(defn buffer_append_k_string (buf str)
  (buffer_append_all buf (get <string> _bits str)))

(define k_repr)
(defn k_do_repr (obj buf)
  ; Buffered building is cheaper than multiple string copies
  ; This is OK but it would be really cool to run the parser backwards
  (let ((type (get-type obj))
        (storing 0)
        (<< buffer_append_k_string))
    (cond
      ((= type <undefined>)  (<< buf "nil"))
      ((= type <long>)       (<< buf (k_long_repr obj)))
      ((= type <string>)     (buffer_append_all buf "\"") (<< buf obj) (buffer_append_all buf "\""))
      ((= type <symbol>)     (<< buf (new-<string> (get <symbol> _bits obj))))
      ((= type <pair>)       (let ()
                               (buffer_append_all buf "(")
                               (while (and (is <pair> obj) (!= globals obj))
                                 (k_do_repr (get_head obj) buf)
                                 (when (is <pair> (set obj (get_tail obj)))
                                       (buffer_append_all buf " ")))
                               (buffer_append_all buf ")")))

      ; XXX support these?
      ;((= type <array>)
      ;((= type <expr>
      ;((= type <form>)
      ;((= type <fixed>)
      ;((= type <subr>)
      ;((= type <variable>)
      ;((= type <env>)
      ;((= type <context>)
      (else         (fatal1 "don't know how to represent <type:%d>" type)))))

(defn k_repr (obj)
  (let ((buf (new_buffer)))
    (k_do_repr obj buf)
    (let ((result (new-<string> (buffer_contents buf))))
      (buffer_delete buf)
      result)))



;; S-expression parser ------------------------------------------------


(define-function is_blank (c)   (or     ( = ?   c)         ; sp
               ( = ?\t c)         ; ht
               ( = ?\n c)         ; nl
               ( = ?\v c)         ; vt
               ( = ?\f c)         ; ff
               ( = ?\r c)))         ; cr

(define-function is_digit10 (c)       (and (<= ?0  c) (<= c ?9)))      ; 0 1 2 3 4 5 6 7 8 9

(define-function is_digit16 (c)   (or (and (<= ?0  c) (<= c ?9))      ; 0 1 2 3 4 5 6 7 8 9
            (and (<= ?a  c) (<= c ?f))      ; a b c d e f
            (and (<= ?A  c) (<= c ?F))))   ; A B C D E F

(define-function is_alpha (c)   (or (and (<= ?a  c) (<= c ?z))      ; a b c d e f g h i j k l m n o p q r s t u v w x y z
            (and (<= ?A  c) (<= c ?Z))))   ; A B C D E F G H I J K L M N O P Q R S T U V W X Y Z

(define-function is_letter (c)   (or      ( = ?!  c)         ; !
            (and (<= ?#  c) (<= c ?&))      ; # $ % &
            (and (<= ?*  c) (<= c ?/))      ; * + , - . /
           ( = ?:  c)         ; :
            (and (<= ?<  c) (<= c ?Z))      ; < = > ?  @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
           ( = ?\\ c)         ; \
           ( = ?^  c)         ; ^
           ( = ?_  c)         ; _
            (and (<= ?a  c) (<= c ?z))      ; a b c d e f g h i j k l m n o p q r s t u v w x y z
           ( = ?|  c)         ; |
           ( = ?~  c)         ; ~
           (<= 128 c)))         ; utf-8 multibyte character

; Intern a symbol
(define-function intern (string)
  (let ((lo 0)
        (hi (- (k_array_length symbols) 1)))

    ; Bin-search for the symbol - only intern it once
    (while (<= lo hi)
      (let* ((mid (/ (+ lo hi) 2))
             (mid_sym (k_array_at symbols mid))
             (c (strcmp string (get <symbol> _bits mid_sym))))
        (cond
          ((< c 0)   (set hi (- mid 1)))
          ((> c 0)   (set lo (+ mid 1)))
          (else      (return mid_sym)))))

    (gc-let* ((sym (new-<symbol> string)))
      (k_array_insert symbols lo sym))))

(define-function is_octal (c)      (and (<= ?0 c) (<= c ?7)))

(define-function is_hexadecimal (c)   (or (and (<= ?0 c) (<= c ?9))
              (and (<= ?a c) (<= c ?f))
              (and (<= ?A c) (<= c ?F))))

(define-function digit_value (c)
  (cond
    ((and (<= ?0 c) (<= c ?9))   (- c ?0))
    ((and (<= ?a c) (<= c ?z))   (- c (- ?a 10)))
    ((and (<= ?A c) (<= c ?Z))   (- c (- ?A 10)))
    (else         (fatal "illegal digit in character escape"))))

(define-function read_char (c stream)
  (if (= ?\\ c)
      (let ()
        (set c (getc stream))
        (cond
          ((= c ?a)         ?\a)
          ((= c ?b)         ?\b)
          ((= c ?f)         ?\f)
          ((= c ?n)         ?\n)
          ((= c ?r)         ?\r)
          ((= c ?t)         ?\t)
          ((= c ?v)         ?\v)
          ((= c ?u)         (let ((a (getc stream))
                                  (b (getc stream))
                                  (c (getc stream))
                                  (d (getc stream)))
                              (+ (<< (digit_value a) 24)
                              (+ (<< (digit_value b) 16)
                              (+ (<< (digit_value c)  8)
                              (digit_value d))))))

          ((= c ?x)         (let ((x 0))
                              (if (is_hexadecimal (set c (getc stream)))
                                  (let ()
                                    (set x (digit_value c))
                                    (if (is_hexadecimal (set c (getc stream)))
                                        (let ()
                                          (set x (+ (* x 16) (digit_value c)))
                                          (set c (getc stream))))))
                              (ungetc c stream)
                              x))

          ((and (<= ?0 c)
                (<= c ?7))  (let ((x (digit_value c)))
                              (if (is_octal (set c (getc stream)))
                                  (let ()
                                    (set x (+ (* x 8) (digit_value c)))
                                    (if (is_octal (set c (getc stream)))
                                        (let ()
                                          (set x (+ (* x 8) (digit_value c)))
                                          (set c (getc stream))))))
                              (ungetc c stream)
                              x))

          (else             (if (or (is_alpha c) (is_digit10 c))
                              (fatal1 "illegal character escape: \\%c" c)
                              c))))
        c))

(define-function read_number (c stream)
  (let ((buf (new_buffer))
  (neg (= ?- c)))
    (or neg (buffer_append buf c))
    (while (is_digit10 (set c (getc stream))) (buffer_append buf c))
    (and (= ?x c) (= 1 (<buffer>-position buf))
   (let ()
     (buffer_append buf c)
     (while (is_digit16 (set c (getc stream))) (buffer_append buf c))))
    (ungetc c stream)
    (buffer_append buf 0)
    (let ((result (strtoul (<buffer>-contents buf) 0 0)))
      (buffer_delete buf)
      (new-<long> (if neg (- result) result)))))

(define-function read_symbol (c stream)
  (let ((buf (new_buffer)))
    (while (or (is_letter c) (is_digit10 c))
      (buffer_append buf c)
      (set c (getc stream)))
    (ungetc c stream)
    (buffer_append buf 0)
    (let ((result (intern (<buffer>-contents buf))))
      (buffer_delete buf)
      result)))

(define-function read_string (c stream)
  (let ((buf (new_buffer)))
    (while (!= ?\" (set c (getc stream)))
      (set c (read_char c stream))
      (and (= EOF c) (fatal "unterminated string literal"))
      (buffer_append buf c))
    (buffer_append buf 0)
    (let ((result (new-<string> (<buffer>-contents buf))))
      (buffer_delete buf)
      result)))

(def k_read) ;; forward
(def read_list)

;; Helper to read_list
(defn read-list-elements (delim stream)
  (let ((element (k_read stream)))
    (gc-protect (element)
      (cond
        ((= DONE element)  s_empty_pair)
        ((= s_dot element) (k_read stream)) ; Splat the list in.
        (else              (let ((tail (read-list-elements delim stream)))
                             (gc-protect (tail)
                               (new-<pair> element tail))))))))

(define-function read_list (delim stream)
  (let ((l (read-list-elements delim stream)))
    (gc-protect (l)
      (when (!= delim (getc stream)) (fatal1 "missing closing '%c' delimiter while reading list" delim))
      l)))

(define-function read_quote (prefix stream)
  (let ((expr (k_read stream)))
    (when (= DONE expr) (fatal "EOF while reading quoted literal"))
    (gc-protect (expr)
      (set expr (new-<pair> expr ()))
      (set expr (new-<pair> prefix expr))
      expr)))

(set k_read (lambda (stream)
  (while 1
    (let ((c (getc stream)))
      (cond
        ((is_blank c)    ())
        ((= ?? c   )     (return (new-<long> (read_char (getc stream) stream))))
        ((= ?- c)        (return (if (is_digit10 (ungetc (getc stream) stream))
                         (read_number c stream)
                         (read_symbol c stream))))
        ((= ?\' c)       (return (read_quote s_quote stream)))
        ((= ?\` c)       (return (read_quote s_quasiquote stream)))
        ((= ?\, c)       (return (let ((d (getc stream)))
                                   (if (= ?@ d)
                                       (read_quote s_unquote_splicing stream)
                                       (ungetc d stream)
                                       (read_quote s_unquote)))))
        ((is_letter c)   (return (read_symbol c stream)))
        ((= ?\( c)       (return (read_list ?\) stream)))   ((= ?\) c)   (return (let () (ungetc c stream) DONE)))
        ((= ?\[ c)       (return (read_list ?\] stream)))   ((= ?\] c)   (return (let () (ungetc c stream) DONE)))
        ((= ?\{ c)       (return (read_list ?\} stream)))   ((= ?\} c)   (return (let () (ungetc c stream) DONE)))
        ((is_digit10 c)  (return (read_number c stream)))
        ((= ?\; c)   (while (and (!= ?\n (set c (getc stream)))
                  (!= ?\r c)
                  (!= EOF c))))
        ((= ?\" c)   (return (read_string c stream)))
        ((< c 0)   (return DONE))
        (else      (fatal1 "illegal character: %c" c)))))))


;;; Back to new runtime ---------------------------------------------------------

; Environment lookup

(define-function k_env_find_variable (env name)
  (while env
    (let* ((bindings (get <env> bindings env))
           (index    (k_array_length bindings))
           (vars     (get <array> _array bindings)))
      (while (<= 0 (set index (- index 1)))
        (let ((var (oop-at vars index)))
          (and (= name (get <variable> name var))
               (return var)))))
    (set env (get <env> parent env))))

(define-function k_env_lookup (env name)
  (let ((var (k_env_find_variable env name)))
    (if var
        (get <variable> value var)
        (fatal1 "undefined variable: %s" (get <symbol> _bits name)))))

(define-function k_env_define (env def_name val)
  (let ((bindings (get <env> bindings env)))
    (let ((index (k_array_length bindings)))
      (while (>= (set index (- index 1)) 0)
        (let ((var (k_array_at bindings index)))
          (when (= def_name (get <variable> name var))
                (let ()
                  (put <variable> value var val)
                  (return var)))))
      (let ((off (get_long (get <env> offset env)))
            (var (new-<variable> def_name val env off)))
        (gc-protect (var)
          (put <env> offset env (new-<long> (+ off 1)))
          (k_array_append bindings var))))))


; Good ol' eval / apply with the semantics for maru s-expressions

(def k_eval) ;; forward

(define-function k_apply_expr (fun arguments current-ctx)
  (log-debug "  A  " fun "   args: " arguments "\n     ctx: "current-ctx)

  ; TODO make this clearer by destructuring defunc
  ; (env args . body)
  (let* ((args    arguments)
         (defunc  (get <expr> defunc fun))
         (env     (k_car defunc))
         (formals (k_cadr defunc)))

    ; Setup the calling context.
    (let* ((call-ctx (new-<context> (get <expr> ctx fun) env))
           (locals (get <context> bindings call-ctx)))
      (gc-protect (defunc call-ctx)

        ;; Set the locals to the callers args.
        ;; Validate the callers args match the cardinality of the formal params.
        (while (is <pair> formals)
               (unless (is <pair> args) (k_error "too few arguments: (" fun " " arguments ")" ))
               (k_set_array_at locals (get_long (get <variable> index (get_head formals))) (get_head args))
               (set formals (get_tail formals))
               (set args    (get_tail args)))

        ;; Splat the rest of the args i.e. (a b . rest)
        (when (is <variable> formals)
              (let ()
                (k_set_array_at locals (get_long (get <variable> index formals)) args)
                (set args ())))

        (when (and args (!= s_empty_pair args)) (k_error "too many arguments: (" fun " " arguments ")" ))

        (set defunc (get_tail (get_tail defunc)))
        (while (is <pair> defunc)
               (set args (k_eval (get_head defunc) call-ctx))
               (set defunc (get_tail defunc)))))

      ;; TODO Get rid of mutating the context and this goes away :)
      ;; (and (get <env> stable env) (put <context> callee current-ctx ()))
    ; Args has been reset to the result of the last body expression. TODO make this clearer.
    args))

(def counter 0)

(define-function k_apply (fun arguments ctx)
  (evaluator-trace (printf "  %02d " trace_depth) (k_dumpln fun))

  (let ((type (get-type fun)))
    (cond
      ((= type <expr>)   (k_apply_expr fun arguments ctx))
      ((= type <fixed>)  (k_apply (get <fixed> function fun) arguments ctx))
      ((= type <subr>)   ((get <subr> _imp fun) arguments ctx))
      (else   (let ((ap (k_array_at (get <variable> value applicators) (get-type fun))))
                (if ap
                  (let ((args arguments))
                    (gc-protect (args)
                      (set args (new-<pair> fun args))
                      (k_apply ap args ctx)))
                  (k_error "cannot apply: " fun)))))))

(def exlist) ;; forward

(define-function k_expand (exp env)
  (log-debug "  X  " exp)
  (if (is <pair> exp)
      (let ((head (k_expand (get_head exp) env)))
        (gc_push_root (address-of head))
        (if (is <symbol> head)
            (let ((val (k_env_find_variable env head)))
              (and (is <variable> val) (set val (get <variable> value val)))
              (and (is <form> val)

            (let ((func (get <form> function val)))
              ; The head valaue is a form.
              ; Pull out the form's func and apply it
              (when func
                    (let ((args (new-<pair> env (get_tail exp))))
                      (gc-protect (args)
                        (set head (k_apply func args ()))
                        (set head (k_expand head env)))
                      (gc_pop_root (address-of head))
                      (return head)))))))

        (let ((tail (get_tail exp)))
          (gc_push_root (address-of tail))
          (unless (= head s_quote) (set tail (exlist tail env)))
          (and (= s_set head)
               (is <pair>   (k_car  tail))
               (is <symbol> (k_caar tail))
               (let ((buf (new_buffer)))
                 (buffer_append_all buf "set-")
                 (buffer_append_all buf (get <symbol> _bits (get_head (get_head tail))))
                 (set head (intern (buffer_contents buf)))
                 (set tail (k_concat (get_tail (get_head tail)) (get_tail tail)))))

          (set exp (new-<pair> head tail))
          (gc_pop_root (address-of tail))
          (gc_pop_root (address-of head))))

      (if (is <symbol> exp)
          (let ((val (k_env_find_variable env exp)))
            (and (is <variable> val) (set val (get <variable> value val)))
            (and (is <form> val)
                 (let ((func (get <form> symbol val)))
                   (and func
                        (let ((args (new-<pair> exp ())))
                          (gc-protect (args)
                            (set args (new-<pair> env args))
                            (set args (k_apply func args ()))
                            (set exp (k_expand args env))))))))

          (let ((func (k_array_at (get <variable> value expanders) (get-type exp))))
            (and func
                 (let ((args (new-<pair> exp ())))
                   (gc-protect (args)
                     (set exp (k_apply func args ()))))))))
  exp)

(set exlist
  (lambda (list env)
    (if (is <pair> list)
        (let ((head (k_expand (get_head list) env)))
          (gc-protect (head)
            (if (= s_empty_pair (get_tail list))
                (new-<pair> head ())
                (let ((tail (exlist (get_tail list) env)))
                  (gc-protect (tail)
                    (new-<pair> head tail))))))
        (k_expand list env))))

(def enlist) ;; forward

(define-function k_encode (exp env)
  (if (is <pair> exp)
      (let ((head (k_encode (get_head exp) env))
            (tail (get_tail exp)))
        (gc-protect (head tail)
          (cond
            ((= head f_let)      (let ((args (k_cadr exp)))
                                   (gc-protect (env)
                                     (set env (new-<env> env 0 (get_long (get <env> offset env))))
                                     (while (is <pair> args)
                                            (let ((var (get_head args)))
                                              (and (is <pair> var) (set var (get_head var)))
                                              (k_env_define env var ())
                                              (set args (get_tail args))))
                                     (set tail (enlist tail env))
                                     (set tail (new-<pair> env tail)))))

            ((= head f_fn)   (let ((args (k_cadr exp)))
                                   (gc-protect (env)
                                     (set env (new-<env> env 1 0))
                                     (while (is <pair> args)
                                            (k_env_define env (get_head args) ())
                                            (set args (get_tail args)))
                                     (and args (k_env_define env args ()))
                                     (set tail (enlist tail env))
                                     (set tail (new-<pair> env tail)))))

            ((= head f_def)      (let ((var (k_env_define (get <variable> value globals) (k_car tail) ())))
                                      (set tail (enlist (k_cdr tail) env))
                                      (set tail (new-<pair> var tail))))

            ((= head f_set)      (let ((var (k_env_find_variable env (k_car tail))))
                                   (or var (fatal1 "set: undefined variable: %s" (get <symbol> _bits (k_car tail))))
                                   (set tail (enlist (k_cdr tail) env))
                                   (set tail (new-<pair> var tail))))

            ((!= head f_quote)   (set tail (enlist tail env))))
          (set exp (new-<pair> head tail))))

      (if (is <symbol> exp)
           (let ((val (k_env_find_variable env exp)))
              (or val (fatal1 "undefined variable: %s" (get <symbol> _bits exp)))
              (set exp val)
              (if (is_global exp)
                  (let ((v (get <variable> value exp)))
                    (and (or (is <form> v) (is <fixed> v))
                         (set exp v)))
                  (let ((venv (get <variable> env exp)))
                    (or (= (get_long (get <env> level venv)) (get_long (get <env> level env)))
                        (put <env> stable venv s_true)))))
        ; else
        (let ((fn (k_array_at (get <variable> value encoders) (get-type exp))))
          (and fn (let () (printf "APPLY GOT ENCODER\n... " (k_println fn) 1)))
          (and fn
               (let ((args (new-<pair> env ())))
                 (gc-protect (args)
                 (set args (new-<pair> exp args))
                 (printf "APPLY ENCODER\n... ") (k_print fn) (printf " ") (k_print args) (printf " ") (k_println env)
                 (set exp (k_apply fn args ()))))))))
  exp)

(set enlist (lambda (list env)
  (if (is <pair> list)
      (let ((head (k_encode (get_head list) env)))
        (gc-protect (head)
          (if (= s_empty_pair (get_tail list))
              (new-<pair> head ())
              (let ((tail (enlist (get_tail list) env)))
                (gc-protect (tail)
                  (new-<pair> head tail))))))
      (k_encode list env))))



; evlis from the lisp 1.5 manual
; evaluate each list element (some might evaluate to nested lists
(define-function evlist (obj ctx)
  (if (is <pair> obj)
      (let ((head (k_eval (get_head obj) ctx)))
        (gc-protect (head)
          (if (= s_empty_pair (get_tail obj))
            (new-<pair> head ())
            (let ((tail (evlist (get_tail obj) ctx)))
              (gc-protect (tail)
              (new-<pair> head tail))))))
      obj))

; finally eval

(set k_eval (lambda (exp ctx)
  (log-debug "  E  "exp  "\n     ctx: "ctx)
  (let ((type (get-type exp)))
    (cond
      ((= type <undefined>)  exp)
      ((= type <long>)       exp)
      ((= type <string>)     exp)
      ((= type <variable>)   (if (is_global exp)
                                 (get <variable> value exp)
                                 (let ((delta (- (get_long (get <env> level (get <context>  env ctx)))
                                                 (get_long (get <env> level (get <variable> env exp))))))
                                   (while (> delta 0)
                                          (set ctx (get <context> home ctx))
                                          (set delta (- delta 1)))
                                   (k_array_at (get <context> bindings ctx)
                                               (get_long (get <variable> index exp))))))

      ((= type <pair>)      (let ((head (k_eval (get_head exp) ctx)))
                              (gc-protect (head)
                                (k_set_array_at trace_stack trace_depth exp)
                                (set trace_depth (+ trace_depth 1))

                                (set head (if (is <fixed> head)
                                              (k_apply (get <fixed> function head) (get_tail exp) ctx)
                                              (let ((args (evlist (get_tail exp) ctx)))
                                                (gc-protect (args)
                                                  (k_apply head args ctx)))))

                                (set trace_depth (- trace_depth 1))
                                head)))
      ((= type <symbol>)    (k_error "symbol in eval?"))
      (else         (let ((ev (k_array_at (get <variable> value evaluators) (get-type exp))))
                      (and ev
                           (let ((args (new-<pair> exp ())))
                             (gc-protect (args)
                               (k_set_array_at trace_stack trace_depth exp)
                               (set trace_depth (+ trace_depth 1))
                               (set exp (k_apply ev args ctx))
                               (set trace_depth (- trace_depth 1)))))
                               exp))))))


; Subrs --------------------------------------------------------------

(define-function subr_def (args ctx)
  (let ((var (k_car args)))
    (unless (is <variable> var)
            (let ()
              (printf "\nerror: non-variable in define: ")
              (k_dumpln var)
              (fatal "aborting")))
    (let ((val (k_eval (k_cadr args) ctx)))
      (put <variable> value var val))))

(define-function subr_definedP (args ctx)
  (let ((s (k_car args))
  (e (or (k_cadr args) (get <variable> value globals))))
    (k_env_find_variable e s)))

(define-function subr_fn (args ctx)
  (new-<expr> args ctx))

(define-function subr_let (args ctx)
  (let* ((tmp      ())
         (bindings (k_cadr args))
         (locals   (get <context> bindings ctx))
         (body     (k_cddr args)))
    (gc-protect (tmp)
      (while (is <pair> bindings)
        (let ((binding (get_head bindings)))
          (if (is <pair> binding)
            (let ((var  (get_head binding))
                  (prog (get_tail binding)))
              (set tmp ())
              (while (is <pair> prog)
                (set tmp (k_eval (get_head prog) ctx))
                (set prog (get_tail prog)))
              (k_set_array_at locals (get_long (get <variable> index var)) tmp))))
        (set bindings (get_tail bindings)))
      (set tmp ())
      (while (is <pair> body)
        (set tmp (k_eval (get_head body) ctx))
        (set body (get_tail body))))
    tmp))

;; (set var value)
;;
;; args  -> `(var value)
;;    var   -> a variable that will be assign the result of evaluating value
;;    value -> a form that needs evaluating in the current contextd
(define-function subr_set (args ctx)
  (let ((var (k_car args)))
    (or (is <variable> var)
        (let ()
          (printf "\ncannot set undefined variable: ")
          (k_dumpln var)
          (fatal "aborting")))

    (let ((val (k_eval (k_cadr args) ctx)))
      (if (is_global var)
          (put <variable> value var val)
          (let ((delta (- (get_long (get <env> level (get <context>  env ctx)))
                          (get_long (get <env> level (get <variable> env var))))))

            (while (< 0 delta)
              (set ctx (get <context> home ctx))
              (set delta (- delta 1)))
            (k_set_array_at (get <context> bindings ctx) (get_long (get <variable> index var)) val))))))

;; Make this a non-primitive?
(define-function subr_while (args ctx)
  (let ((tst  (k_car args))
        (prog args))
    (while (truthiness (k_eval tst ctx))
      (let ((body prog))
        (while (is <pair> (set body (k_cdr body)))
          (k_eval (get_head body) ctx))))))

;; TODO allow partially defined cond forms?
;; what to return if we bottom out? undefined etc
;; runtime error about unsatisfied / exhausted switch
;; or just leave this layer dynamic and return something
;; akin to s_empty_pair
;; if a higher level wants more strictness it can do it.
(defn k_cond (args ctx)
  (let ((clausesExp args))
    (if (not (is <pair> clausesExp)) (fatal "list of clauses not supplied to 'cond'"))
    (if (not (is <pair> (k_car clausesExp))) (fatal "expected a predicate and value"))

    (let* ((clauseExp (k_car clausesExp))
           (testExp   (k_car clauseExp))
           (valueExp  (k_cadr clauseExp)))
       (gc-protect (clauseExp testExp valueExp)
          (if (and (= s_else testExp) (is <pair> (k_cdr clausesExp))) (fatal "'else' was not the last clause to 'cond'"))
          (if (truthiness (k_eval testExp ctx))
             (k_eval valueExp ctx)
             (when (is <pair> (k_cdr clausesExp)) (k_cond (k_cdr clausesExp) ctx)))))))

(defn subr_cond (args ctx) (k_cond args ctx))

;; Ditch if in favour of cond?
(define-function subr_if (args ctx)
  (if (truthiness (k_eval (k_car args) ctx))
      (k_eval (k_cadr args) ctx)
      (let ((ans ()))
        (set args (k_cdr args))
        (while (is <pair> (set args (k_cdr args)))
          (set ans (k_eval (get_head args) ctx)))
        ans)))

;; make both 'or and 'and non primitive?
(define-function subr_or (args ctx)
  (let ((ans ()))
    (while (is <pair> args)
      (and (truthiness (set ans (k_eval (get_head args) ctx)))
           (return ans))
      (set args (get_tail args)))))

(define-function subr_and (args ctx)
  (let ((ans s_true))
    (while (is <pair> args)
      (or (truthiness (set ans (k_eval (get_head args) ctx)))
          (return s_false))
      (set args (get_tail args)))
    ans))

(define-function subr_quote (args ctx)
  (k_car args))

;; don't need this
(define-function subr_not (args ctx)
  (if (truthiness (k_car args)) s_false s_true))

(define-function arity2 (op args)
  (unless (and (is <pair> args)
               (is <pair> (get_tail args))
               (= s_empty_pair (get_tail (get_tail args))))
      (fatal1 "%s: expected 2 arguments" op)))

(define-function arity3 (op args)
  (unless (and (is <pair> args)
               (is <pair> (get_tail args))
               (is <pair> (get_tail (get_tail args)))
               (= s_empty_pair (get_tail (get_tail (get_tail args)))))
      (fatal1 "%s: expected 3 arguments" op)))

(define-function subr_sub (args ctx)
  (or args (fatal "-: expected 1 or 2 arguments"))
  (let ((lhs (get_head args))
  (rhs (get_tail args)))
    (if (and (is <pair> rhs))
  (let ()
    (set rhs (get_head rhs))
    (if (and (is_long lhs) (is_long rhs))
        (new-<long> (- (get_long lhs) (get_long rhs)))
      (k_error "non-numeric argument: (- "lhs" "rhs")")))
      (if (and (is_long lhs))
    (new-<long> (- (get_long lhs)))
  (k_error "non-numeric argument: (- "lhs")")))))

(define-form define-binary (op name)
  `(define-function ,(concat-symbol 'subr_ (string->symbol name)) (args ctx)
     (arity2 ,name args)
     (let ((lhs (get_head args))
           (rhs (get_head (get_tail args))))
       (if (and (is_long lhs) (is_long rhs))
           (new-<long> (,op (get_long lhs) (get_long rhs)))
           (printf "%p %p\n" lhs rhs)
           (k_error "non-numeric argument: (",name" "lhs" "rhs")")))))

(define-binary &  "bitand")
(define-binary |  "bitor")
(define-binary ^  "bitxor")
(define-binary +  "add")
(define-binary *  "mul")
(define-binary /  "div")
(define-binary << "shl")
(define-binary >> "shr")

(define-form define-relation (op name)
  `(define-function ,(concat-symbol 'subr_ (string->symbol name)) (args ctx)
     (arity2 ,name args)
     (let ((lhs (get_head args))
           (rhs (get_head (get_tail args))))

       (if (and (is_long lhs) (is_long rhs))
           (if (,op (get_long lhs) (get_long rhs))
               s_true
               s_false)
           (k_error "non-numeric argument: (",name" "lhs" "rhs")")))))

(define-relation <  "lt")
(define-relation <= "le")
(define-relation >= "ge")
(define-relation >  "gt")

(define-function subr_eq (args ctx)
  (arity2 "=" args)
  (let* ((lhs  (get_head args))
         (rhs  (get_head (get_tail args)))
         (type (get-type lhs)))
    (if (cond
          ((= type <long>)     (and (is_long rhs) (= (get_long lhs) (get_long rhs))))
          ((= type <string>)   (and (is <string> rhs) (not (strcmp (get <string> _bits lhs) (get <string> _bits rhs)))))
          (else                (and (= lhs rhs))))
        s_true
        s_false)))

(define-function subr_ne (args ctx)
  (arity2 "!=" args)
  (let* ((lhs  (get_head args))
         (rhs  (get_head (get_tail args)))
         (type (get-type lhs)))
    (if (truthiness
          (cond
            ((= type <long>)    (and (is_long rhs) (!= (get_long lhs) (get_long rhs)) s_true))
            ((= type <string>)  (and (is <string> rhs) (strcmp (get <string> _bits lhs) (get <string> _bits rhs))) s_true)
            (else               (and (!= lhs rhs) s_true))))
         s_true
         s_false)))

; (define-function subr_create-window (args ctx)
;   (createWindow))


; expose syscall instead
(define-function subr_abort (args ctx)
  (abort))

(define-function subr_exit (args ctx)
  (let ((status (and (is_long (k_car args)) (get_long (k_car args)))))
    (exit status)))

(define-function subr_open (args ctx)
  (let ((arg (k_car args)))
    (or (is <string> arg) (fatal "non-string path in open"))
    (let ((stream (fopen (get <string> _bits arg) "rb")))
      (and stream (new-<long> stream)))))

(define-function subr_close (args ctx)
  (let ((arg (k_car args)))
    (or (is <long> arg) (fatal "non-integer argument in close"))
    (fclose (get_long arg))
    arg))

;; (append (path string-data))
;; Atomic file append
(define-function subr_append (args ctx)
  (let ((path (k_car args))
        (data (k_cadr args)))
    ; XXX TODO path value in error printing.
    (or (is <string> path) (fatal1 "non-string path in append"))
    (let ((f (fopen (get <string> _bits path) "a")))
      (or (> 0 f) (fatal "can't append to file"))
        ; XXX TODO fast a loose, hard coded assumptions around string only data
        ; and size of chars - _bits is supposed to be a wchar_t* but it's a C char* :(
        ; XXX check flush status
        (fwrite (get <string> _bits data) 1 (get_long (get <string> size data)) f)
        (fflush f)
        (fclose f))))


(define-function subr_getc (args ctx)
  (let ((arg (k_car args)))
    (or arg (set arg (get <variable> value input)))
    (or (is_long arg) (fatal "non-integer stream id in getc"))
    (let ((c (getc (get_long arg))))
      (and (>= c 0)
     (new-<long> c)))))

(define-function subr_format (args ctx)
  (arity2 "format" args)
  (let ((ofmt (k_car args))
        (oarg (k_cadr args)))
    (or (is <string> ofmt) (fatal "non-string format"))
    (let ((fmt (get <string> _bits ofmt))
          (typ (get-type oarg))
          (arg ()))
      (cond
        ((= typ <undefined>))
        ((= typ <long>)     (set arg (get_long oarg)))
        ((= typ <string>)   (set arg (get <string> _bits oarg)))
        ((= typ <symbol>)   (set arg (get <symbol> _bits oarg)))
        (else               (set arg oarg)))
      (let ((size 100)
            (p)
            (np))
        (or (set p (malloc size) (return ())))
        (while 1
          (let ((n (snprintf p size fmt arg)))
            (and (<= 0 n)
                 (< n size)
                 (let ((ans (new-<string> p)))
                   (free p)
                   (return ans)))
            (set size (* size 2)))
          (or (set np (realloc p size))
              (let ()
                (free p)
                (return "out of memory")))
                (set p np))))))

(defn subr_repr (args ctx)
  ;; XXX TODO make this multi arg?
  (k_repr (k_car args)))

(define-function subr_dump (args ctx)
  (while (is <pair> args)
    (k_dump (get_head args))
    (set args (get_tail args))))

(define-function subr_print (args ctx)
  (while (is <pair> args)
         (k_print (get_head args))
         (set args (get_tail args))))

(define-function subr_warn (args ctx)
  (while (is <pair> args)
    (let* ((arg  (get_head args))
     (type (get-type arg)))
      (cond
  ((= type <string>) (fprintf stderr "%s" (get <string> _bits arg)))
  ((= type <symbol>) (fprintf stderr "%s" (get <symbol> _bits arg)))))
    (set args (get_tail args))))

(define-function subr_apply (args ctx)
  (k_apply (k_car args) (k_cadr args) ctx))

(define-function subr_eval (args ctx)
  (let ((x (k_car args))
  (e (or (k_cadr args) (new-<env> (get <variable> value globals) 1 0))))
    (gc-protect (x e)
      (let ((c (new-<context> () e)))
        (gc-protect (c)
    (set x (k_expand x e))
    (set x (k_encode x e))
    (k_eval x c))))))

(define-function subr_encode (args ctx)
  (k_encode (k_car args)
      (or (k_cadr args)
    (get <context> env ctx))))

(define-function subr_expand (args ctx)
  (k_expand (k_car args)
      (or (k_cadr args)
    (get <context> env ctx))))

(define-function subr_cons   (args ctx)   (new-<pair> (k_car args) (k_cadr args)))
(define-function subr_string (args ctx)   (_new-<string> (and (is_long (k_car args)) (get_long (get_head args)))))
(define-function subr_array  (args ctx)   (new-<array> (and (is_long (k_car args)) (get_long (get_head args)))))
(define-function subr_form   (args ctx)   (new-<form> (k_car args) (k_cadr args)))

(define-function subr_allocate (args ctx)
  (arity2 "allocate" args)
  (let ((type (get_head args))
  (size (get_head (get_tail args))))
    (and (is_long type) (is_long size)
   (new-oops (get_long type) (* (get_long size) 4)))))

(define-function subr_type_of (args ctx)   (and args (new-<long> (get-type (k_car args)))))
(define-function subr_stringP (args ctx)   (if (is <string> (k_car args)) s_true s_false))
(define-function subr_symbolP (args ctx)   (if (is <symbol> (k_car args)) s_true s_false))
(define-function subr_pairP   (args ctx)   (if (is <pair> (k_car args))   s_true s_false))
(define-function subr_arrayP  (args ctx)   (if (is <array> (k_car args))  s_true s_false))
(define-function subr_car     (args ctx)   (k_car (k_car args)))
(define-function subr_cdr     (args ctx)   (k_cdr (k_car args)))


; TODO ditch these for more general sequence operations
(define-function subr_set_car (args ctx)
  (let ((arg (k_car args)))
    (and (is <pair> arg)
         (put <pair> head arg (k_cadr args)))))

(define-function subr_set_cdr (args ctx)
  (let ((arg (k_car args)))
    (and (is <pair> arg)
         (put <pair> tail arg (k_cadr args)))))

(define-function subr_oop_at (args ctx)
  (arity2 "oop-at" args)

  (let ((obj (get_head args))
        (arg (get_head (get_tail args))))

    (and obj
         (not (is_long obj))
         (is_long arg)
         (oop-at obj (get_long arg)))))

(define-function subr_set_oop_at (args ctx)
  (arity3 "set-oop-at" args)

  (let ((obj     (get_head args))
        (arg     (get_head (get_tail args)))
        (val     (get_head (get_tail (get_tail args)))))
        ; (gc_size (get <array> _array symbols)))

    ; (or (< gc_size 8192) (fatal1 "D: symbols is wrong size %d\n" gc_size))
    (and obj
         (not (is_long obj))
         (is_long arg)
         (set-oop-at obj (get_long arg) val))
    val))

(define-function subr_array_length (args ctx)
  (new-<long> (k_array_length (k_car args))))

(define-function subr_array_at (args ctx)
  (arity2 "array-at" args)
  (let ((arr (get_head args))
  (arg (get_head (get_tail args))))
    (and (is_long arg)
   (k_array_at arr (get_long arg)))))

(define-function subr_set_array_at (args ctx)
  (arity3 "set-array-at" args)
  (let ((arr (get_head args))
  (arg (get_head (get_tail args)))
  (val (get_head (get_tail (get_tail args)))))
    (and (is_long arg)
   (k_set_array_at arr (get_long arg) val))))

(define-function subr_string_length (args ctx)
  (let ((arg (k_car args)))
    (and (is <string> arg)
   (get <string> size arg))))

(define-function subr_string_at (args ctx)
  (arity2 "string-at" args)
  (let ((arr (get_head args))
  (arg (get_head (get_tail args))))
    (and (is_long arg)
   (let ((idx (get_long arg)))
     (and (<= 0 idx) (< idx (k_string_length arr))
    (new-<long> (string-at (get <string> _bits arr) idx)))))))

(define-function subr_set_string_at (args ctx)
  (arity3 "set-string-at" args)
  (let ((arr (get_head args))
  (arg (get_head (get_tail args)))
  (val (get_head (get_tail (get_tail args)))))
    (and (is_long arg) (is_long val)
   (let ((idx (get_long arg)))
     (and (<= 0 idx) (< idx (k_string_length arr))
    (let ()
      (set-string-at (get <string> _bits arr) idx (get_long val))
      val))))))

(define-function subr_string_symbol (args ctx)
  (let ((arg (k_car args)))
    (if (is <symbol> arg)
  arg
      (and (is <string> arg)
     (intern (get <string> _bits arg))))))

(define-function subr_symbol_string (args ctx)
  (let ((arg (k_car args)))
    (if (is <string> arg)
        arg
        (and (is <symbol> arg)
             (new-<string> (get <symbol> _bits arg))))))

(define-function subr_long_string (args ctx)
  (let ((arg (k_car args)))
    (if (is <string> arg)
  arg
      (and (is_long arg)
     (let ((buf (malloc 32)))
       (sprintf buf "%ld" (get_long arg))
       (let ((result (new-<string> buf)))
         (free buf)
         result))))))


(define-function subr_verbose (args ctx)
  (let ((verbosity (k_car args)))
    (when (and verbosity (is_long verbosity)) (set opt_verbose (get_long verbosity))))
  (new-<long> opt_verbose))

(def repl_stream) ; forward

; args should contain a valid file path
; read as many valid froms as possible
; don't interpret them, just create a list of
; all of them.
(define-function subr_read (args ctx)
  (let* ((arg (and args (k_car args)))
         (path (and arg (get <string> _bits arg)))
         (stream (if path (fopen path "r") stdin))
         (head (new-<pair> () ())) ;; XXX PAIR error
         (tail head)
         (res ()))
    (gc-protect (head res)
      (or stream (fatal1 "no such file: %s" arg))
      (while (!= DONE (set res (k_read stream)))
         ; XXX set_tail isn't nil safe yet. Don't set it to 'nil' value.
        (set tail (set_tail tail (new-<pair> res ()))))
      (or (= stdin stream) (fclose stream))
      (get_tail head))))

(define-function subr_dlopen (args ctx)
  (arity2 "dlopen" args)
  (k_dumpln args)
  (let ((libName (k_car args))
        (mode (k_cadr args))
        (lib ()))
    (or (not (is <string> libName))
        (not (is <long> mode))
        (return ()))
    (set lib (dlopen (get <string> _bits libName) (get_long mode)))
    (if (> 0 lib)
        (new-<long> lib)
        (()))))
; (define-fuction subr_dlclose (args ctx)
;   (dlopen xxx yyy))

; (define-fuction subr_dlsym (args ctx)
;   (dlopen xxx yyy))



; The reader  ----------------------------------------------------------------

(define-function repl_stream (stream)
  (let ((old_input (get <variable> value input))
        (res ()))
    (gc-protect (old_input res)
      ; Used in the getc subr when no argument is given, it just reads current input
      (put <variable> value input (new-<long> stream))

      (or (= stdin stream) (fscanf stream "#!%*[^\012\015]"))
      (while
        (let ()
          (and (= stdin stream) (fprintf stdout ".") (fflush stdout))
          (!= DONE (set res (k_read stream))))
        (let ((env (new-<env> (get <variable> value globals) 1 0)))
          (gc-protect (env)
            (and (> opt_verbose 0) (printf "\n\n------\n;;; ") (k_dumpln res))
            (set res (k_expand res env)) (and (> opt_verbose 2) (printf "expd--> ") (k_dumpln res))
            (set res (k_encode res env)) (and (> opt_verbose 2) (printf "encd--> ") (k_dumpln res))
            (let ((ctx (new-<context> () env)))
              ; TODO don't always need ctx here. evaluating a function created a new ctx in apply

              (gc-protect (ctx)
                (set res (k_eval res ctx)) (and (> opt_verbose 1) (printf "eval--> ") (k_dumpln res))
                (if (= stdin stream)
                    (k_dumpln res)
                    (and (> opt_verbose 0) (printf ";;; => ") (k_dumpln res))))))))
      (and (= stdin stream)
           (printf "\nmorituri te salutant\n"))
      (put <variable> value input old_input))
    res))

; Intern an implementation
(define-function define-subr (name imp)
  (let ((tmp (new-<subr> imp name)))

    (gc-protect (tmp)
      (k_env_define (get <variable> value globals) (intern name) tmp))))

(define-function define-fsubr (name imp)
  (let ((tmp (new-<subr> imp name)))

    (gc-protect (tmp)
      (set tmp (new-<fixed> tmp))
      (k_env_define (get <variable> value globals) (intern name) tmp))))


;  ---------------------------------------------------------------------

(define-function main (argc argv)

  (set stdin  (fdopen 0 "r"))
  (set stdout (fdopen 1 "a"))
  (set stderr (fdopen 2 "a"))

  (gc_initialise) (gcdebug (set gc_frequency 1))

  (set symbols (new-<array> 0)) (gc_push_root (address-of symbols))
  (set globals (new-<env> () 0 0))  (gc_push_root (address-of globals))
  (set globals (k_env_define globals (intern "*globals*") globals)) (gc_push_root (address-of globals))

  ;; Symbols that have no inherent evaluation. They'll be dealt with
  ;; by the reader (to control the reader) before we reach eval.
  (set s_dot              (intern "."))
  (set s_set              (intern "set"))
  (set s_def              (intern "def"))
  (set s_fn               (intern "fn"))
  (set s_let              (intern "let"))
  (set s_quote            (intern "quote"))
  (set s_quasiquote       (intern "quasiquote"))
  (set s_unquote          (intern "unquote"))
  (set s_unquote_splicing (intern "unquote-splicing"))

  ;; A few of our symbols are self evaluating.
  (set s_true        (intern "true"))        (k_env_define (get <variable> value globals) s_true s_true)
  (set s_false       (intern "false"))       (k_env_define (get <variable> value globals) s_false s_false)
  (set s_empty_pair  (intern "empty-pair"))  (k_env_define (get <variable> value globals) s_empty_pair s_empty_pair)

  ;; TODO is this realy how I want to handle else or should cond be a macro?
  (set s_else        (intern "else"))        (k_env_define (get <variable> value globals) s_else s_else)


  (set input       (k_env_define (get <variable> value globals) (intern "*input*"      ) ()))   (gc_push_root (address-of input      ))
  (set expanders   (k_env_define (get <variable> value globals) (intern "*expanders*"  ) ()))   (gc_push_root (address-of expanders  ))
  (set encoders    (k_env_define (get <variable> value globals) (intern "*encoders*"   ) ()))   (gc_push_root (address-of encoders   ))
  (set evaluators  (k_env_define (get <variable> value globals) (intern "*evaluators*" ) ()))   (gc_push_root (address-of evaluators ))
  (set applicators (k_env_define (get <variable> value globals) (intern "*applicators*") ()))   (gc_push_root (address-of applicators))


  ; Wire up the runtime impls
  (define-fsubr "def"    subr_def)
  (define-fsubr "fn"     subr_fn)
  (define-fsubr "let"    subr_let)
  (define-fsubr "set"    subr_set)
  (define-fsubr "while"  subr_while)
  (define-fsubr "cond"   subr_cond)
  (define-fsubr "if"     subr_if)
  (define-fsubr "or"     subr_or)
  (define-fsubr "and"    subr_and)
  (define-fsubr "quote"  subr_quote)

  (define-subr  "defined?"       subr_definedP)
  (define-subr  "not"            subr_not)
  (define-subr  "&"              subr_bitand)
  (define-subr  "|"              subr_bitor)
  (define-subr  "^"              subr_bitxor)
  (define-subr  "+"              subr_add)
  (define-subr  "-"              subr_sub)
  (define-subr  "*"              subr_mul)
  (define-subr  "/"              subr_div)
  (define-subr  "<<"             subr_shl)
  (define-subr  ">>"             subr_shr)
  (define-subr  "<"              subr_lt)
  (define-subr  "<="             subr_le)
  (define-subr  "!="             subr_ne)
  (define-subr  "="              subr_eq)
  (define-subr  ">="             subr_ge)
  (define-subr  ">"              subr_gt)
  (define-subr  "abort"          subr_abort)
  (define-subr  "exit"           subr_exit)
  (define-subr  "format"         subr_format)
  (define-subr  "repr"           subr_repr)
  (define-subr  "dump"           subr_dump)
  (define-subr  "print"          subr_print)
  (define-subr  "warn"           subr_warn)
  (define-subr  "apply"          subr_apply)
  (define-subr  "eval"           subr_eval)
  (define-subr  "encode"         subr_encode)
  (define-subr  "expand"         subr_expand)
  (define-subr  "cons"           subr_cons)
  (define-subr  "string"         subr_string)
  (define-subr  "array"          subr_array)
  (define-subr  "form"           subr_form)
  (define-subr  "open"           subr_open)
  (define-subr  "close"          subr_close)
  (define-subr  "append"         subr_append)
  (define-subr  "getc"           subr_getc)
  (define-subr  "allocate"       subr_allocate)
  (define-subr  "type-of"        subr_type_of)
  (define-subr  "string?"        subr_stringP)
  (define-subr  "symbol?"        subr_symbolP)
  (define-subr  "pair?"          subr_pairP)
  (define-subr  "array?"         subr_arrayP)
  (define-subr  "car"            subr_car)
  (define-subr  "cdr"            subr_cdr)
  (define-subr  "set-car"        subr_set_car)
  (define-subr  "set-cdr"        subr_set_cdr)
  (define-subr  "oop-at"         subr_oop_at)
  (define-subr  "set-oop-at"     subr_set_oop_at)
  (define-subr  "array-length"   subr_array_length)
  (define-subr  "array-at"       subr_array_at)
  (define-subr  "set-array-at"   subr_set_array_at)
  (define-subr  "string-length"  subr_string_length)
  (define-subr  "string-at"      subr_string_at)
  (define-subr  "set-string-at"  subr_set_string_at)
  (define-subr  "string->symbol" subr_string_symbol)
  (define-subr  "symbol->string" subr_symbol_string)
  (define-subr  "long->string"   subr_long_string)
  (define-subr  "verbose"        subr_verbose)
  (define-subr  "read"           subr_read)

  (let ((tmp ()))
    (gc-protect (tmp)
      (while (< 0 (set argc (- argc 1)))
             (set tmp (new-<pair> () tmp)) ;; XXX PAIR error
             ; XXX set_head isn't nil safe yet.
             (set_head tmp (new-<string> (oop-at argv argc))))
      (set arguments (k_env_define (get <variable> value globals) (intern "*arguments*") tmp))))

  (set f_set    (k_env_lookup (get <variable> value globals) s_set))   (gc_push_root (address-of f_set))
  (set f_quote  (k_env_lookup (get <variable> value globals) s_quote)) (gc_push_root (address-of f_quote))
  (set f_fn     (k_env_lookup (get <variable> value globals) s_fn))    (gc_push_root (address-of f_fn))
  (set f_let    (k_env_lookup (get <variable> value globals) s_let))   (gc_push_root (address-of f_let))
  (set f_def    (k_env_lookup (get <variable> value globals) s_def))   (gc_push_root (address-of f_def))

  (set trace_stack (new-<array> 32)) (gc_push_root (address-of trace_stack))

  (k_env_define (get <variable> value globals) (intern "*backtrace*") ())

  (set reader-state (new-<reader>)) (gc_push_root (address-of reader-state))

  (fprintf stderr "modernity-1\n\n")
  (while (is <pair> (get <variable> value arguments))
    (let* ((argl (get <variable> value arguments))
           (args (get_head argl))
           (arg  (get <string> _bits args)))
      (gc-protect (args)
        (put <variable> value arguments (get_tail argl))
        (cond
          ((not (strcmp arg "-v"))   (set opt_verbose (+ 1 opt_verbose)))
          ((not (strcmp arg "-"))
            (let ()
              ; (printf "foo\n") 
              ; (set (<reader>-source reader-state) "stdin")
              ; (set (<reader>-line reader-state) 0)
              ; (set (<reader>-col reader-state) 0)

              (repl_stream stdin)))
          (else (let ((stream (fopen arg "r")))
                  (or stream (fatal1 "no such file: %s" arg))

                  (set (<reader>-source reader-state) arg)
                  (set (<reader>-line reader-state) 0)
                  (set (<reader>-col reader-state) 0)
                  (repl_stream stream)
                  (fclose stream)))))))

  (and (> opt_verbose 0)
       (let ()
         (gc_gcollect)
         (printf "GC: %d objects in %d bytes, %d free\n" gc_objects_live gc_bytes_used gc_bytes_free)))

  (fprintf stderr "%d objects in %d bytes, %d free\n" gc_objects_live gc_bytes_used gc_bytes_free)

  0)

(compile-end)
