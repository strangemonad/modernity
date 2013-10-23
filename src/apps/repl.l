
; XXX refactor out
(defn array-append-all (arr . vals)
  (list-do val vals (array-append arr val)))

(require "src/lib/parser/parser.l")
(require "src/lib/parser/peg/peg-compile.l")
; (require "src/lib/parser/parser-group.l")
(require "src/lib/parser/peg/peg.l")

(define *parser-stream*)


; -----

(define-form grammar-extend (name . rules)
  (println "GRAMMAR EXTEND" rules)
  (exit 0))

(define-form grammar-define (name parent fields . rules)
  (eval `(define-class ,name ,parent ,fields))
  (peg-compile-rules name rules)
  ())

(define-class <temp-grammar> <parser> ())


(load "src/lib/pretty-print.l")

(define-form grammar-eval (rules expr)
  ;;(println "GRAMMAR EVAL ")  (pretty-print (expand rules))
  (peg-compile-rules '<temp-grammar> rules)
  (and expr (peg-compile-rules '<temp-grammar> (list (list 'start expr))))
  ;;(println "GRAMMAR "*temp-grammar*)
  (and expr
       `(let ((_p (parser <temp-grammar> *parser-stream*)))
	  ($start _p)
	  (<parser>-result _p))))

; ----

(defn repl-parser-stream (stream prompt)
  (let ((p (parser <peg> stream))
        (s *parser-stream*)
        (v))
    (set *parser-stream* stream)
    (while (let ()
        (and prompt (print prompt))
        ($sexpression p))
      (set v (<parser>-result p))
      (set v (eval v)))

    ($sspace p)
    (or (parser-stream-at-end *parser-stream*)
  (let ()
    (print "\nsyntax error in read-eval-print near: ")
    (while (not (parser-stream-at-end *parser-stream*))
      (print (format "%c" (parser-stream-next *parser-stream*))))
    (println "<EOF>")
    (error "abort")))
    (set *parser-stream* s)
    v))

(defn repl-stream (stream prompt)
  (repl-parser-stream (parser-stream stream) prompt))
(defn repl-file (file prompt path)
  (repl-stream (input-stream file path) prompt))
(defn repl-path (path prompt)
  (repl-file (or (open path) (error "cannot open: "path)) prompt path))

(while *arguments* (repl-path (next-argument) ()))

(exit 0)


; XXX Much of this can be pulled out (grammar stuff should be separate
;from repl concepts
; XXX no where here is there a REPL object
; XXX probably want a Reader as an abstraction between repl and parsers
; streams

