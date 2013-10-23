;;; PEG - Parsing Expression Gramars

; XXX probably want full OMeta or SMeta here?


(define-form grammar-extend (name . rules)
  (println "GRAMMAR EXTEND" rules)
  (exit 0))

(define-form grammar-define (name parent fields . rules)
  (eval `(define-class ,name ,parent ,fields))
  (peg-compile-rules name rules)
  ())


(define-class <temp-grammar> <parser> ())

(define-form grammar-eval (rules expr)
  (peg-compile-rules '<temp-grammar> rules)
  (and expr (peg-compile-rules '<temp-grammar> (list (list 'start expr))))
  (and expr
       `(let ((_p (parser <temp-grammar> *parser-stream*)))
	  ($start _p)
	  (<parser>-result _p))))


