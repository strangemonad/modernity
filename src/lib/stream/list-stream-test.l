(unit-test "<list-stream>"
  (let ((s (list-stream '(?x ?h ?e (l (l)) () ?o)))
        (c 0)
        (a (array)))
    (unit-assert (= ?x ($peek s)))
    (unit-assert (= ?x ($next s)))
    (unit-assert (= ?h ($peek s)))

    (while (!= *end* (set c ($next s)))
      (array-append a c))
    (unit-assert (equal '(?h ?e (l (l)) () ?o) (array->list a)))
    (unit-assert (= *end* ($peek s)))
    (unit-assert (= *end* ($next s)))))
