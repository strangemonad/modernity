;;; TODO:
;;; - macro support
;;; - proper seq interface
;;; - functional tools (map, reduce, select etc)
;;; - expose runtime (e.g. expanders encoders evaluators etc)
;;; - expose GC and memory block building primitive
;;; - Primitive type ops (list length, concat; string lenght concat etc)
;;; - making types and structure (accessors, ctors)
;;; - multi-methods
;;; - classes and "oo"
;;; - ditch abort (the unix process) in favour of aborting the current form (a la CLU)
;;; - environment introspection / primitive IDE (e.g. defs, source for function)
;;; - reading / loading programs from the outside world
;;; - dlopen?
;;; - generating an image?
;;; - jitting of subrs
;;; - forward defs
;;; - when
;;;
;;; - ditch car and cdr from core? or at least undef them up here
;;; - ditch if from core
;;; - backtracing and debugging.



;(verbose 5)

; TODO ditch this for a better list construction?
(def list (fn args args))

;; TODO this is the seq interface but it's operating directly on lists
;; and not closing over an immutable seq object.
;; not sure how to cleanly boostrap this yet.

; TODO end of list type and seq result GADT?
; just us a maybe?
(def first car)
; TODO for now this must be a linked list of pairs
; TODO dyn dispatch on type to get the seq abstraction
(def rest cdr)
(def second (fn (coll) (first (rest coll))))
;; TODO undef first and rest beyond here.
;; TODO make it so order of definition doesn't matter.


(def error)

(def %error
  (fn args
    (set error abort)
    (print "\nERROR: ")
    (apply print args)
    (print "\n")
    (abort)))

(set error
  (fn args
    (set error %error)
    (print "\n[31;1merror: ")
    (apply print args)
    (print "[m\n")
    (abort)))

(def quasiquote
  (form
    (let ((qq-list) (qq-element) (qq-object))
      (set qq-list
        (fn (l)
            (if (pair? l)
                (let ((obj (first l)))
                  (if (and (pair? obj) (= (first obj) 'unquote-splicing))
                      (if (pair? (rest l))
                          (list 'concat-list (second obj) (qq-list (rest l)))
                          (second obj))
                      (list 'cons (qq-object obj) (qq-list (rest l)))))
                (list 'quote l))))
      (set qq-element
        (fn (coll)
            (if (= (first coll) 'unquote)
                (second coll)
                (qq-list coll))))
      (set qq-object
        (fn (object)
            (if (pair? object)
                (qq-element object)
                (list 'quote object))))

      (fn (env expr)
        (qq-object expr)))))


; Core language? -------

; Special / built-in forms
;
; As long as you have a way to hook into the eval / applicative nature
; of things you can get away with quite a bit: http://www.vpri.org/pdf/tr2011002_oecm.pdf
;
; In other words, you can anotate your structures with type constructors
; (e.g. the head of the list is a symbol) and build your reader in
; a way that you can switch on the type constructor rather than hard code
; a set of symbols to match on the imput stream.
;
; `fn`
;
; `form` - this simply defs a new type of structure that holds on to a `fn`
;          and optionally a body. The reader expander needs to now how to
;          expand the input if the head of the input is as structure of type `form`
;          i.e. the captured `fn` should produce a form given the rest of list as input.


; defs new reader form into the environment
; auto-capturing the env at the point of definition.
;
; def-form: name, args, body -> ()
; side effects: *env*[name] <- (form (fn (*env*, @args) @body))


(def define-form
  (form
    (fn (env name args . body)
      `(def ,name (form (fn (*env* ,@args) ,@body))))))

(define-form defn (name args . body)
  `(def ,name (fn ,args ,@body)))


(defn println args (apply print args) (print "\n"))


; (defmacro if (predicate consequent opt-alternate)
;   ;; At define time, check if the akternate is supplied at all
;   ;; the result is either
;   `(cond
;     ((,predicate ,consequent))
;   ;; or
;   `(cond
;      ((,predicate ,consequent)
;       (else       opt-alternate)))

; Utilities

; (def-function concat-list (x y)
;   (if (pair? x)
;       (cons (first x) (concat-list (rest x) y))
;       y))

(defn rec (n)
      (print n)
  (if (< 0 n) (rec (- n 1))))


; TODO none of these work well with empty lists - they evaluate to nil

; For 1 based lookup into sequences
; general counterpart to `first`.
(defn nth (position sequence)
  (cond
    ((< position 1) (println "nth sequence access must be greater than 0"))
    ((= 1 position) (first sequence))
    (else           (nth (- position 1) (rest sequence)))))

(defn second (sequence)
  (nth 2 sequence))

(defn last (sequence)
  ; XXX TODO move away from `pair?`
  ; XXX dangerous until tail call optimizations
  (if (pair? (rest sequence))
      (last (rest sequence))
      (first sequence)))

; TODO make this immutable - persistent Data Structure ops
; XXX current patern really sucks here since you need to store
; the passed in sequence somewhere if you care about the whole list again.
(defn seq-append (sequence elem)
  (cond
    ((pair? (rest sequence))  (seq-append (rest sequence) elem))
    ((pair? sequence)         (set-cdr sequence (cons elem '())))
    ;((= '() sequence)         (set-card sequence elem))
    (else                     (abort "trying to append to something that isn't a sequence"))))

