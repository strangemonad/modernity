; Broken!
(unit-test "<input-stream>"
  (let ((s (input-stream *input*))
        (c 0)
        (a (array)))

    (unit-assert (= ?; ($peek s)))
    (unit-assert (= ?; ($next s)))
    (unit-assert (= ?h ($peek s)))

    (while (!= ?! (set c ($next s)))
      (array-append a c))
    (unit-assert (= "hello" (array->string a)))
    (unit-assert (= "goodbye" (input-stream-up-to s ?!)))))

