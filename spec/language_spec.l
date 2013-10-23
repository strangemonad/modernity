;; Describe modernity-1
;;
;; The language spec has to ease in to things since we might have broken anything
;; (or not built anything). It might seem like we're doing nothing at first
;; but we start by exercising the reader, the evaluator, the applicator, environment
;; definitions and then we can finally go wild.
;;
;; Run this as the first script to the interpreter (without any boot script)
;; Assuming it works, we can move on to tests that verify the semantics of
;; what is claimed here.


;;; Reader, evaluator, applicator behaviour

;; Booleans

true
false

;; Numbers

1
0
10
9999
-54


;; Characters

?c
?3
?\\

;; Strings

"Hello World"
""
"a"
"Something longer\nWith other\tcharacters\$@Q$^$%^*&"
"We also support unicode あいうえお まみむめも"


;; Basic lists (and quoting)

'(1)
'()
'(1 2 3)
'("hello" 2 ?5 '(5 6))
'('('(565 432) 43 54 ) 4 5 7)
'(() () ())


;; Function creation

(fn (a) a)
(fn () "no args")
(fn (a b c) a)
(fn (a b) '())
(fn (a b) ())
(fn (a b))

; With splatted args
(fn (. a) a)
(fn (a b . c) c)

; With arg list
(fn args args)

;; Function application
((fn (a) a) "Plato")
((fn () "no args"))
((fn (a b c) a) "a" "b" "c")
((fn (a b) '()) "first" "second")
((fn (a b)) "Nietzsche" "Locke")
((fn (a b c) a) '() '("a") '(() ()))


;;; Primitive environment behaviour


;; Environment definition & lookup

(def x 5)
x



;; Higher order functions & closures

(def make-higher-order (fn (predicate)
  (fn (arg)
    (if (not (predicate arg)) (print "FAILED higher-order function test")))))

((make-higher-order
  (fn (arg1)
    (= "hello higher-order" arg1)))
  "hello higher-order")


;; Printing

(print "Passed basic reader / evaluator / applicator test\n")

;; Equality checking the different types.

(= true false)
(= 1 1)
(= "Hello" "world")
(= '() '(1 2))


;; Conditionals

(cond
  ((= true true) 1)
  ((= 1 1)       (print "ERROR: prematurely evaluated\n"))
  (else          (print "ERROR: failed conditional\n")))


;; XXX TODO longer cond form that triggers CG

(print "\nCompleted basic language spec\n\n")
