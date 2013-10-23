(unit-test "<string-stream>"
  (let ((s (string-stream "xhello"))
        (c 0)
        (a (array)))

    (unit-assert (= ?x ($peek s)))
    (unit-assert (= ?x ($next s)))
    (unit-assert (= ?h ($peek s)))

    (while (!= *end* (set c ($next s)))
      (array-append a c))
    (unit-assert (= "hello" (array->string a)))
    (unit-assert (= *end* ($peek s)))
    (unit-assert (= *end* ($next s)))))
