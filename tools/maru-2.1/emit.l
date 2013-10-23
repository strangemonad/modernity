; emit.l
; walks through a bung of definitions and emits x86 assembly in GAS format

(define __MACH__   '(t))
(define __WINDOWS__   '( ))

; String, symbol, typename helpers
(define-function string->type-name (str) (string->symbol (concat-string "<" (concat-string str ">"))))
(define-function symbol->type-name (sym) (string->type-name (symbol->string sym)))

(define-function align (alignment value)   (& (- alignment) (+ (- alignment 1) value )))

(define-function variable (name value env index)
  (let ((self (new <variable>)))
    (set (<variable>-name  self) name)
    (set (<variable>-value self) value)
    (set (<variable>-env   self) env)
    (set (<variable>-index self) index)
    self))

(define-function variable? (obj) (= <variable> (type-of obj)))

; Redifine the env building function - not exactly sure the implications
(define-function environment (parent)
  (let ((self (new <env>)))
    (set (<env>-parent   self) parent)
    (set (<env>-level    self) (if parent (<env>-level  parent) 0))
    (set (<env>-offset   self) 0)
    (set (<env>-bindings self) (array))
    self))

;;; EXTERN

(define-structure <extern> (name stub))

(define-function extern (name)
  (let ((self (new <extern>)))
    (set (<extern>-name self) name)
    self))

(define-function extern? (obj) (= <extern> (type-of obj)))


;;; IA32 -- OPERANDS and helpers

; helper for define-operand
; returns a list structure that can be evaluated to be
; a bunch of field setters
(define-function define-operand-make-setters (tname fields)
 (if (pair? fields)
     (let* ((field (car fields))
            (setter-name (concat-symbol tname '- field)))
       (cons `(set (,setter-name self) ,field)
             (define-operand-make-setters tname (cdr fields))))))

; define-operand
; A defined operand FOO (much like and instruction) has
; - a defined structure <FOO> to have `fields` fields.
; - a ctor `FOO` that takes all the field values and sets them on the <FOO> structure
; - is printable (i.e. implements method `do-print <FOO>`) with a customizable
;   printing routine that can be passed in
; - 
(define-form define-operand (name fields . printing)
  (let ((tname (symbol->type-name name)))
    (eval `(define-structure ,tname ,fields))
    (eval `(define-function ,name ,fields
             (let ((self (new ,tname)))
               ; evaluate the list of field setters returned by `define-operand-make-setters`
               ,@(define-operand-make-setters tname fields)
               self)))
    `(define-method do-print ,tname () (print ,@printing))))

; Label helper
(define-function mangle-label (name)
  (let* ((plain   (symbol->string name))
         (mangled (array))
         (index   0)
         (outdex  0)
         (size    (string-length plain))
         (__PREFIX__ (if (or __MACH__ __WINDOWS__) "_" "")))
    (while (< index size)
      (let ((c (string-at plain index)))
        (cond
           ((or (and (<= 0x61 c) (<= c 0x7a))
                (and (<= 0x41 c) (<= c 0x5a))
                (and (<= 0x30 c) (<= c 0x39)))
             (let ()
               (set-array-at mangled outdex c)         (set outdex (+ outdex 1))))
           ((= ?_ c)
             (let ()
               (set-array-at mangled outdex c)         (set outdex (+ outdex 1))
               (set-array-at mangled outdex c)         (set outdex (+ outdex 1))))
           (else
             (let ((digit-for (fn (char)
                                  (if (< char 10)
                                      (+ char 0x30)
                                      (+ char 0x37)))))
               (set-array-at mangled outdex 0x5f)         (set outdex (+ outdex 1))
               (set-array-at mangled outdex (digit-for (>> c  4)))   (set outdex (+ outdex 1))
               (set-array-at mangled outdex (digit-for (&  c 15)))   (set outdex (+ outdex 1))))))
      (set index (+ 1 index)))
    (concat-string __PREFIX__ (array->string mangled))))


; Operands can emit asm snippets evaluate to x86 addressing modes
; - i.e. they can be used as operands in asm commands.

; Label e.g. "__L_2345"
(define-operand LABEL (name)   (mangle-label (<LABEL>-name self)))

; Global e.g."_fdopen_24stub" very similar to a label
(define-operand GI32  (name)   (<GI32>-name self))

; Direct / Displacement only produces a long interpreted as an address
(define-operand LI32  (value)  (<LI32>-value self)) ; long value as operand
(define-operand TI32  (offset) (<TI32>-offset self)"(%esp)") ; stack var (offset) + esp (temp) as operand

(define-function temp? (obj)   (= <TI32> (type-of obj)))


;;; DEFINE-EMIT

; The emit multi-method
(define-generic emit op+args
  (print "\nemit: illegal instruction: "op+args)
  (error "aborted"))

; Base case
(define-multimethod emit ((<pair> program))
  (while program
    (apply emit (car program))
    (set program (cdr program))))

; Helper for define-emit
(define-function %define-emit-param-name (index)
  (string->symbol (concat-string "$" (long->string index))))

; Helper for define-emit
(define-function %define-emit-params (index types)
  (if (pair? types)
      (cons (list (symbol->type-name (car types)) (%define-emit-param-name index))
       (%define-emit-params (+ index 1) (cdr types)))))

; Helper for define-emit
(define-form define-instruction (name)
  (let* ((sname (symbol->string name))
         (tname (string->type-name sname)))
    `(let ()
       (define-structure ,tname ())
       (define-method do-print ,tname () (print ,sname))
       (define ,name (new ,tname)))))

; The define-emit form captures the different instructions that can be emitted
; and how they should print.
;
; opcode+args -> (opcode-symbol . args)
; opcode is required, args are optional
; - defines an instruction named 'opcode'
; - defines an emit multimethod that dispatches on the opcode (as a type) and all args.
; - the body will be called on a matching invocation to emit
;   the variables 'op' and optionally '$1' '$2'... (for each arg)
;   they will all be strings.
(define-form define-emit (opcode+args . body)
  (let* ((opcode-sym (car opcode+args))
         (opcode-name (symbol->string opcode-sym))
         (type-name (string->type-name opcode-name)))
    `(let ()
       ; XXX TODO move this to define-instruction
       ,@(when (not (defined? opcode-sym *globals*))
               `((define-instruction ,opcode-sym)))
       (define-multimethod emit ((,type-name op)
                                 ,@(%define-emit-params 1 (cdr opcode+args)))
         ,@body))))

;;; IA32 -- INSTRUCTIONS

(define-emit   (TEXT)             (println "   .text"))
(define-emit   (DATA)             (println "   .data"))
(define-emit   (SECTION string)   (println "   .section "$1))

(define-emit   (INDIRECT LABEL)   (println "   .indirect_symbol "$1))
(define-emit   (GLOBAL LABEL)     (println "   .globl "$1))

(define-emit   (ALIGN long)       (println "   .align " $1))

(define-emit   (LONG long)        (println "   .long "$1))
(define-emit   (LONG LABEL)       (println "   .long "$1))

(define-emit   (ASCIZ string)     (print   "   .asciz ") (dumpln $1))

(define-emit   (DEFLABEL LABEL)   (println $1":"))

(define-emit   (ENTER long)      (println "   pushl %ebp")
                                 (println "   movl %esp,%ebp")
                                 (println "   subl $"$1",%esp"))

(define-emit   (LEAVE long)      (println "   addl $"$1",%esp")
                                 (println "   leave")
                                 (println "   ret"))

(define-emit   (NEG)             (println "   negl %eax"))

(define-emit   (ADD TI32)        (println "   addl "$1",%eax"))

(define-emit   (SUB TI32)        (println "   subl "$1",%eax"))

(define-emit   (MUL TI32)        (println "   mull "$1))

(define-emit   (DIV TI32)        (println "   movl $0,%edx")
                                 (println "   divl "$1))

(define-emit   (AND TI32)        (println "   andl "$1",%eax"))

(define-emit   (OR TI32)         (println "   orl "$1",%eax"))

(define-emit   (XOR TI32)        (println "   xorl "$1",%eax"))

(define-emit   (NOT)             (println "   cmpl $0,%eax")
                                 (println "   sete %al")
                                 (println "   movzbl %al,%eax"))

(define-emit   (LT TI32)         (println "   cmpl "$1",%eax")
                                 (println "   setl %al")
                                 (println "   movzbl %al,%eax"))

(define-emit   (LE TI32)         (println "   cmpl "$1",%eax")
                                 (println "   setle %al")
                                 (println "   movzbl %al,%eax"))

(define-emit   (EQ TI32)         (println "   cmpl "$1",%eax")
                                 (println "   sete %al")
                                 (println "   movzbl %al,%eax"))

(define-emit   (NE TI32)         (println "   cmpl "$1",%eax")
                                 (println "   setne %al")
                                 (println "   movzbl %al,%eax"))

(define-emit   (GE TI32)         (println "   cmpl "$1",%eax")
                                 (println "   setge %al")
                                 (println "   movzbl %al,%eax"))

(define-emit   (GT TI32)         (println "   cmpl "$1",%eax")
                                 (println "   setg %al")
                                 (println "   movzbl %al,%eax"))

(define-emit   (SLA TI32)        (println "   movl "$1",%ecx")
                                 (println "   shll %cl,%eax"))

(define-emit   (SRA TI32)        (println "   movl "$1",%ecx")
                                 (println "   sarl %cl,%eax"))

(define-emit   (BR LABEL)        (println "   jmp "$1))

(define-emit   (BF LABEL)        (println "   cmpl $0,%eax")
                                 (println "   je "$1))

(define-emit   (BT LABEL)        (println "   cmpl $0,%eax")
                                 (println "   jne "$1))

(define-emit   (CALL LABEL)      (println "   call "$1))
(define-emit   (CALL long)       (println "   call *%eax"))

(define-emit   (LOAD LI32)       (println "   movl $"$1",%eax"))
(define-emit   (LOAD LABEL)      (println "   movl $"$1",%eax"))
(define-emit   (LOAD GI32)       (println "   movl " $1",%eax"))
(define-emit   (LOAD TI32)       (println "   movl " $1",%eax"))

(define-emit   (STORE TI32)      (println "   movl %eax,"$1))
(define-emit   (STORE GI32)      (println "   movl %eax,"$1))

(define-emit   (ADDR GI32)       (println "   movl $"$1",%eax"))
(define-emit   (ADDR TI32)       (println "   leal "$1",%eax"))

(define-emit   (MOVE TI32 TI32)  (println "   movl "$1",%ecx")
                                 (println "   movl %ecx,"$2))

(define-emit   (COMMENT pair)    (print "## ") (apply println $1))

(define-emit   (CHR-AT TI32)     (println "   movl "$1",%ecx")
                                 (println "   leal (%eax,%ecx),%ecx")
                                 (println "   xorl %eax,%eax")
                                 (println "   movb (%ecx),%al"))

(define-emit   (SET-CHR-AT TI32 TI32) (println "   movl "$1",%ecx")
                                      (println "   leal (%eax,%ecx),%ecx")
                                      (println "   movl "$2",%eax")
                                      (println "   movb %al,(%ecx)"))

(define-emit   (OOP-AT TI32)     (println "## OOP-AT")
                                 (println "##   PRE:  oop eax = obj_base_ptr")
                                 (println "##   PRE:  long offset = stack[x] defined by the TI32 operand")
                                 (println "##   POST: oop eax = obj_base_ptr[offset]\n##\t\ti.e. eax is overwitten with the address of the oop-at x")

                                 (println "   movl "$1",%ecx"          "\t\t# int ecx = stack[x / 4]; // ecx is the offset ")
                                 (println "   leal (%eax,%ecx,4),%ecx" "\t# void *ecx = eax + (ecx * 4); // base + (offset * oop-size)")
                                 (println "   movl (%ecx),%eax"        "\t\t# oop eax = *ecx;"))

(define-emit   (SET-OOP-AT TI32 TI32) (println "## SET-OOP-AT")
                                      (println "##   PRE:  oop eax = obj_base_ptr")
                                      (println "##   PRE:  long offset = stack[x] defined by the first TI32 operand")
                                      (println "##   PRE:  oop val = stack[y] defined by the second TI32 operand")
                                      (println "##   POST: oop eax still = obj_base_ptr\n##\t\tbut eax[offset] == val")
                      
                                      (println "   movl "$1",%ecx")
                                      (println "   leal (%eax,%ecx,4),%ecx")
                                      (println "   movl "$2",%eax")
                                      (println "   movl %eax,(%ecx)"))


; Compiler ------------------------------------------------------------------

; Structure + funcs to help keep track of state of various things.
; e.g. how many instructions have been emitted (pc)
; state of temp stack vars etc.
(define-structure <compiler> (level
                              param-counter
                              arg-counter arg-limit
                              tmp-counter tmp-limit temps
                              epilogue
                              asm pc
                              section))

(define-function compiler (level)
  (let ((self (new <compiler>)))
    (set (<compiler>-level         self) level)
    (set (<compiler>-param-counter self) 0)
    (set (<compiler>-arg-counter   self) 0)
    (set (<compiler>-arg-limit     self) 0)
    (set (<compiler>-tmp-counter   self) 0)
    (set (<compiler>-tmp-limit     self) 0)
    (set (<compiler>-asm           self) (array))
    (set (<compiler>-pc            self) 0)
    self))

(define-function new-param (comp)
  (let* ((i (<compiler>-param-counter comp))
         (t (TI32 i)))
    (set (<compiler>-param-counter comp) (+ i 4))
    t))

(define-function new-arg (comp)
  (let* ((i (<compiler>-arg-counter comp))
         (t (TI32 i)))
    (set (<compiler>-arg-counter comp) (+ i 4))
    t))

(define-function free-args (comp args)
  (and (< (<compiler>-arg-limit comp) (<compiler>-arg-counter comp))
       (set (<compiler>-arg-limit comp) (<compiler>-arg-counter comp)))
  (set (<compiler>-arg-counter comp) 0))

(define-function new-temp (comp)
  (let* ((i (<compiler>-tmp-counter comp))
         (t (TI32 i)))
    (set (<compiler>-tmp-counter comp) (+ i 4))
    (and (< (<compiler>-tmp-limit comp) (<compiler>-tmp-counter comp))
         (set (<compiler>-tmp-limit comp) (<compiler>-tmp-counter comp)))
    t))

(define-function alloc-temp (comp)
  (or (pop (<compiler>-temps comp))
      (new-temp comp)))

(define-function free-temp  (comp temp)    (push (<compiler>-temps comp) temp))
(define-function free-temps (comp temps)   (list-do temp temps (free-temp comp temp)))


; Gen -----------------------------------------------------------------------

; The gen method and a hodge-podge of gen-foo functions (for things that don't
; have a convenient type to dispatch on)
; mutually recurse to eventually push args onto the compiler's
; asm array (using the compiler structure to to keep track of the state
; of args, tmps, pc, etc. along the way).
;
; The args should all be valid forms with an instruction ctor as the
; first arg (the applicative).
(define-selector gen)

; Helper method to generate sequentially numbered labels
(let ((counter 0))
  (define-function temp-label-name ()
    (concat-string "_L_" (long->string (set counter (+ counter 1))))))

; The bastard case of the gen method
; when switching on the compiler type -
; push the args onto the back of the asm array (<compiler>-asm[pc])
; bump the pc
(define-method gen <compiler> args
  (let ((asm (<compiler>-asm self))
        (pc  (<compiler>-pc self)))
    (set-array-at asm pc args)
    (set (<compiler>-pc self) (+ 1 pc))))


; All these other gen methods are different, they
; dispatch on program types (rather than the <compiler> type
; and actually generate instructions.
(define-method gen <undefined>   (comp)   (gen comp LOAD (LI32 0)))
(define-method gen <long>        (comp)   (gen comp LOAD (LI32 self)))

(define-method gen <variable> (comp)
  (let ((value (<variable>-value self)))
    (if (extern? value)
        (gen comp LOAD (GI32 (LABEL (concat-symbol (<variable>-name self) '$stub))))
        (if (temp? value)
            (gen comp LOAD value)
            (gen comp LOAD (GI32 (LABEL (<variable>-name self))))))))

(define-method gen <string> (comp)
  (let ((label (LABEL (temp-label-name))))
    (gen comp DATA)
    (gen comp DEFLABEL label)
    (gen comp ASCIZ self)
    (gen comp TEXT)
    (gen comp LOAD label)))

(define-function gen-tmp-prog (prog comp)
  (while (pair? prog)
    (gen (car prog) comp)
    (set prog (cdr prog)))

  (let ((t (alloc-temp comp)))
    (gen comp STORE t)
    t))

(define-function gen-tmp (expr comp)
  (gen expr comp)
  (let ((t (alloc-temp comp)))
    (gen comp STORE t)
    t))

(define-function gen-arg (expr comp)
  (new-arg comp))

(define-function gen-move (a b comp)
  (gen comp MOVE a b))

(define-function generate-nullary (op args comp)
  (gen comp op))

(define-function generate-unary (op args comp)
  (gen (car args) comp)
  (gen comp op))

(define-function generate-binary (op args comp)
  (let ((tmp (gen-tmp (cadr args) comp)))
    (gen (car args) comp)
    (free-temp comp tmp)
    (gen comp op tmp)))

(define-function generate-ternary (op args comp)
  (let ((tmp2 (gen-tmp (caddr args) comp))
        (tmp1 (gen-tmp (cadr  args) comp)))
    (gen (car args) comp)
    (free-temp comp tmp1)
    (free-temp comp tmp2)
    (gen comp op tmp1 tmp2)))


(define-function gen-let-binding (binding comp)
  (let ((var (car binding))
        (tmp (gen-tmp-prog (cdr binding) comp)))
    (set (<variable>-value var) tmp)))

(define-function gen-let (expr comp)
  (let ((temps (map-with gen-let-binding (caddr expr) comp)))
    (list-do stmt (cdddr expr) (gen stmt comp))
    (list-do temp temps (free-temp comp temp))))

(define-function gen-and (expr comp)
  (let ((done (LABEL (temp-label-name))))
    (set expr (cdr expr))
    (while expr
      (gen (car expr) comp)
      (and (set expr (cdr expr)) (gen comp BF done)))
    (gen comp DEFLABEL done)))

(define-function gen-or (expr comp)
  (let ((done (LABEL (temp-label-name))))
    (set expr (cdr expr))
    (while expr
      (gen (car expr) comp)
      (and (set expr (cdr expr)) (gen comp BT done)))
    (gen comp DEFLABEL done)))

(define-function gen-if (expr comp)
  (let ((a (LABEL (temp-label-name)))
        (b (LABEL (temp-label-name))))
    (gen (cadr expr) comp)
    (gen comp BF a)
    (gen (caddr expr) comp)
    (gen comp BR b)
    (gen comp DEFLABEL a)
    (list-do stmt (cdddr expr) (gen stmt comp))
    (gen comp DEFLABEL b)))

(define-function gen-while (expr comp)
  (let ((body (LABEL (temp-label-name)))
   (test (LABEL (temp-label-name))))
    (gen comp BR test)
    (gen comp DEFLABEL body)
    (list-do stmt (cddr expr) (gen stmt comp))
    (gen comp DEFLABEL test)
    (gen (cadr expr) comp)
    (gen comp BT body)))

(define-function gen-set (expr comp)
  (let* ((var (cadr expr))
         (val (<variable>-value var)))
         (gen (caddr expr) comp)
    (if (temp? val)
        (gen comp STORE val)
        (gen comp STORE (GI32 (LABEL (<variable>-name var)))))))

(define-function gen-return (expr comp)
  (list-do stmt (cdr expr) (gen stmt comp))
  (gen comp BR (or (<compiler>-epilogue comp)
                   (set (<compiler>-epilogue comp) (LABEL (temp-label-name))))))

(define-function gen-address-of (expr comp)
  (let ((var (cadr expr)))
    (or (variable? var) (error "address-of: non-variable argument: "var))

    (let ((val (<variable>-value var)))
      (if (temp? val)
          (gen comp ADDR val)
          (gen comp ADDR (GI32 (LABEL (<variable>-name var))))))))


; Runtime utilities
(define return      (fixed (lambda args (error "(return) encountered in interpreted code"))))
(define address-of  (fixed (lambda args (error "(address-of) encountered in interpreted code"))))


; Let gen <pair> keep track of sources.
(define *prev-source* ())

; Helper array of operators for gen <pair>.
(define operators (list->array
  `(()                        ; nullary
    ((,-  ,NEG) (,not ,NOT))               ; unary
    ((,+  ,ADD) (,-   ,SUB) (,* ,MUL) (,/ ,DIV)         ; binary
     (,&  ,AND) (,|   ,OR ) (,^ ,XOR)
     (,<  ,LT ) (,<=  ,LE)  (,= ,EQ ) (,!= ,NE ) (,>= ,GE ) (,> ,GT )
     (,<< ,SLA) (,>>  ,SRA)
     (,oop-at         ,OOP-AT) (,string-at         ,CHR-AT))
    ((,set-oop-at ,SET-OOP-AT) (,set-string-at ,SET-CHR-AT))   ; ternary
    )))

; Helper list of forms for gen <pair>.
(define forms (list
  (cons  let          gen-let)
  (cons  and          gen-and)
  (cons  or           gen-or)
  (cons  if           gen-if)
  (cons  while        gen-while)
  (cons  set          gen-set)
  (cons  return       gen-return)
  (cons  address-of   gen-address-of)))

(define-method gen <pair> (comp)
  (let ((source (oop-at self 2)))
    (and (!= *prev-source* source)
         (car source)
         (let ()
           (set *prev-source* source)
           ;(gen comp DEFLABEL (LABEL (temp-label-name)))
           ;(gen comp COMMENT (list (car source) " " (cdr source))))))

  (let* ((head  (car self))
         (arity (- (list-length self) 1))
         (op    (and (variable? head) (cadr (assq (<variable>-value head) (array-at operators arity)))))
         (generators (list->array (list generate-nullary generate-unary generate-binary generate-ternary))))
    (if op
        ((array-at generators arity) op (cdr self) comp)
        (if (set op (cdr (assq head forms)))
            (op self comp)
            (let ((tmps (map-with gen-tmp (cdr self) comp))
                  (args (map-with gen-arg (cdr self) comp))
                  (func (gen (car self) comp))
                  (narg (list-length args)))
              (map2-with gen-move tmps args comp)
              (free-temps comp tmps)
              (free-args  comp args)
              (gen comp CALL narg))))))


;;; GEN-DEFINITION

; Method that can gen code for bindings (name, value) pair.
; It dispatches on the type of value. Additionally takes
; a compiler object that's woven in for state.
;
; <long>, <string>, <extern>, <form>, <expr>
(define-selector gen-definition)

(define-method gen-definition <long> (name comp)
  (gen comp DATA)
  (gen comp DEFLABEL (LABEL name))
  (gen comp LONG self)
  (gen comp TEXT))

(define-method gen-definition <string> (name comp)
  (let ((temp (LABEL (temp-label-name))))
    (gen comp DATA)
    (gen comp DEFLABEL temp)
    (gen comp ASCIZ self)
    (gen comp ALIGN 4)
    (gen comp DEFLABEL (LABEL name))
    (gen comp LONG temp)
    (gen comp TEXT)))

(define-method gen-definition <extern> (name comp)
  (let ((nlabel (LABEL                self.name        ))
        (slabel (LABEL (concat-symbol self.name '$stub))))
    (if __MACH__
        (let ()
          (gen comp SECTION "__IMPORT,__pointers,non_lazy_symbol_pointers")
          (gen comp DEFLABEL slabel)
          (gen comp INDIRECT nlabel)
          (gen comp LONG 0)
          (gen comp TEXT))
        (gen comp DATA)
        (gen comp DEFLABEL slabel)
        (gen comp LONG nlabel)
        (gen comp TEXT))))

(define-method gen-definition <form> (name comp)
  (gen comp COMMENT (list "form "name)))

(define-function gen-param (var comp)
  (set (<variable>-value var) (new-param comp)))

(define-method gen-definition <expr> (name ocomp)
  (let* ((main (= 'main name))
         (defunc (<expr>-defunc self))
         (body (cddr defunc))
         (comp (compiler (+ 1 (<compiler>-level ocomp))))
         (tnam (if main (LABEL name) (LABEL (temp-label-name))))
         (vnam (if main ()           (LABEL name)))
         (params (map-with gen-param (cadr defunc) comp)))

    ; gen each expression in the body of expr
    (list-do e body (gen e comp))
    (let* ((arg-size (align 16             (<compiler>-arg-limit comp) ))
           (tmp-size (align 16 (+ arg-size (<compiler>-tmp-limit comp))))
           (frm-size (align 16 (+ tmp-size 8))))

      (map (lambda (tmp) (set (<TI32>-offset tmp) (+ arg-size (<TI32>-offset tmp)))) (<compiler>-temps comp))
      (map (lambda (tmp) (set (<TI32>-offset tmp) (+ frm-size (<TI32>-offset tmp)))) params)
      (emit TEXT)
      (and main (emit GLOBAL tnam))
      (emit DEFLABEL tnam)
      (emit COMMENT (list "frame "arg-size" "(<compiler>-tmp-limit comp)" "tmp-size" "frm-size))
      (emit ENTER (- frm-size 8))
      (for (i 0 (<compiler>-pc comp)) (apply emit (array-at (<compiler>-asm comp) i)))
      (and (<compiler>-epilogue comp)
      (emit DEFLABEL (<compiler>-epilogue comp)))
      (emit LEAVE (- frm-size 8)))
    (or main
        (let ()
          (gen ocomp DATA)
          (gen ocomp GLOBAL vnam)
          (gen ocomp DEFLABEL vnam)
          (gen ocomp LONG tnam)
          (gen ocomp TEXT)))))


; Kick offgeneration of bindings in the env
; using the gen-definition method.
(define-function gen-env (env)
  (let* ((vars  (<env>-bindings env))
         (comp  (compiler 0))
         (index (array-length vars)))
    (while (<= 0 (set index (- index 1)))
      (let ((name  (<variable>-name  (array-at vars index)))
            (value (<variable>-value (array-at vars index))))
        (println "## defunc " name)
        (warn name "\n")
        (gen-definition value name comp)))

    ; At this point the compiler's asm array contains a bunch of lists
    ; with each element mapping to a type that the emit multi-method
    ; has an implementation for
    ; apply the emit multi-method onto each list
    ; the default emit implementation is a failure in case we didn't implement
    ; one of the emit multi-methods
    (for (i 0 (<compiler>-pc comp)) (apply emit (array-at (<compiler>-asm comp) i)))))


; Public functions to kick off the ASM generations and emitting
(define-form compile-begin ()
  ; Push a new child environment to capture all definitions
  `(set *globals* (environment *globals*)))

(define-form compile-end ()
  (let ((env *globals*))
    ; Reset the parent env and generate ASM for everything defined in the child env
    (set *globals* (<env>-parent env))
    (gen-env env)))

