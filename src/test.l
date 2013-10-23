(def list (fn args args))


(def first car)
; XXX for now this must be a linked list of pairs
; TODO dyn dispatch on type to get the seq abstraction
(def rest cdr)
(def second (fn (coll) (first (rest coll))))


(def quasiquote
  (form
    (let ((qq-list) (qq-element) (qq-object))
      (set qq-list
        (fn (l)
            (cond
              ((pair? l)        (let ((obj (first l)))
                                  (if (and (pair? obj) (= (first obj) 'unquote-splicing))
                                      (if (pair? (rest l))
                                          (list 'concat-list (second obj) (qq-list (rest l)))
                                          (second obj))
                                      (list 'cons (qq-object obj) (qq-list (rest l))))))

              ;((not (= '() l))  (list 'quote l))
              ;(else             ()))))
              (else             (list 'quote l)))))
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
        (let ((result))
          (set result (qq-object expr))
          ;(print result)
          ;(print "\n")
          result)))))


;(verbose 5)



;`false
; (verbose 5)
(def a "foo")
(def c "bar")

;(def b `(,a))

;(fn () (print "foo"))

(verbose 3)

;`(def ,name (form (fn (*env* ,@args) ,@body))))

;(fn (env name args . body)
  ;`(def ,name (form (fn (*env* ,@args) ,@body))))


(def define-form
  (form
    (fn (env name args . body)
      `(def ,name (form (fn (*env* ,@args) ,body))))))


`(def ,a ,@c)

(define-form defn (a b . c)
  `(def ,a ,c))

