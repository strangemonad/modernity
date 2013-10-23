;; Emits the x86 assemly for the modernity evaluator to stdout

(require "src/apps/emit.l")

; Debug forms - toggle the comments as needed and recompile
(define-form gcdebug prog
  ())
   ;`(let () ,@prog))

(define-form debug prog
  ())
  ; `(let () ,@prog))

(define-form evaluator-trace prog
  ())
  ; `(let () ,@prog))

(define-form safe prog
   ())
  ;`(let () ,@prog))


;; Eval helpers that don't have a good place yet.
(define-form if-tagged-int (a b) b)

(define-function make-gc-protectors (vars)
  (map (lambda (v) (list 'gc_push_root (list 'address-of v)))
       vars))

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


;; Actually emit the assembly for what's defined in eval.l
(compile-begin)
(require "src/apps/eval.l")
(compile-end)

