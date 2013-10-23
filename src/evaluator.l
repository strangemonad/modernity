; going off of
; http://piumarta.com/freeco11/
; http://piumarta.com/freeco11/freeco11-piumarta-oecm.pdf

; A definition of the core 'functional' semantics via a meta-circular
; evaluator

; A regular evaluator --------------------------------------------------

(define eval
  (lambda (exp env)
    (cond
      ((symbol? exp) (cdr (assoc exp env)))
      ((atom?   exp) exp)
      ('t            (let ((fn (eval (car exp) env))
                        (if (fixed? fn)
                            (apply (<fixed>-function fn) (cdr exp) env)
                            (apply fn (evlis (cdr exp) env) env))))))))

(define apply
  (lambda (fun args env)
    (cond
      ((subr? fun) {call (<subr>-implementation fun) args env} ; XXX native code call here
      ((expr? fun) (eval (<expr>-body fun) (pairlis (<expr>-formals fun) args (<expr>-environment fun)))))))



; An example of extending the system with new types
;
; (define %type-names (tuple))
; (define %type-sizes (tuple))
; (define %type-fields (tuple))
;
; (define %allocate-type
;   (let ((last-type number-of-builtin-types))
;     (lambda (name fields)
;       (let ((type (set last-type (+ 1 last-type))))
;         (set-tuple-at %type-names type name)
;         (set-tuple-at %type-sizes type (list-length fields))
;         (set-tuple-at %type-fields type fields)
;        type))))
;
; (define <point> (%allocate-type '<point> '(x y)))
;
; (define <point>-x
;   (lambda (value)
;     (and (= <point> (type-of value))
;          (tuple-at value 0))))


; An open ended evaluator ------------------------------------------------

(define eval (lambda (exp env)
  (apply (tuple-at evaluators (typ-of exp)) (list exp env) env)))

(define apply (lambda (fn args env)
  (if (subr? fn)
      {call (<subr>-implementation fn) args env}
      (apply (tuple-at applicators (type-of fn)) (list fn args env) env))))

; evaluator config

(set-tuple-at evaluators <symbol> (lambda (exp env) (cdr (assoc exp env))))
(set-tuple-at evaluators <number> (lambda (exp env) exp))
(set-tuple-at evaluators <pair> (lambda (exp env)
  (let
    ((fn (eval (car exp) env)))

    (if (eq (type-of fn) <fixed>)
        (apply (<fixed>-function fn) (cdr exp) env)
        (apply fn (evlis (cdr exp) env) env)))))

; applicator config

(set-tuple-at applicators <expr> (lambda (fn args env)
  (eval (<expr>-body fn) (pairlis (<expr>-formals fn) args (<expr>-environment fn))))


; A form type
; forms are function factories (an applicative that evaluates to another
; applicative). Useful for building macros

(define-type <form> (function))
(define form (lambda (function)
  (let
    ((self (new <form>)))

    (set (<form>-function self) function)
    self)))

(set-tuple-at *applicators* <form> (lambda (fn args env)
  (eval (apply (<form>-function) args env) env)))

(define foo (form (lamba (x) x)))
(define mac (macro foo))
