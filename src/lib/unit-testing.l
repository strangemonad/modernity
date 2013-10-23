;;; Primitive unit testing

(define-form unit-test (name . body)
  `(let ((unit-name ,name))
    ,@body))

(define-form unit-fail (expr)
  `(error "UNIT FAIL "unit-name": "',expr))

(define-form unit-assert (expr)
  `(or ,expr (unit-fail ,expr)))

