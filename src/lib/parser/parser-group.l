; Doesn't seem to be used anywhere... keep it around for good measure


(define-structure <group> (first last))

(define-function group ()
  (let ((self  (new <group>))
        (token (token)))
    (set (<group>-first self) token)
    (set (<group>-last  self) token)
    self))

(define-function list-from-to (start stop)
  (and (!= start stop)
       (cons (<token>-value start) (list-from-to (<token>-tail start) stop))))

(define-function group-from-to (first last)
  (let ((self  (new <group>)))
    (set (<group>-first self) first)
    (set (<group>-last  self) last)
    self))

(define-method do-print <group> ()
  (print "{ ")
  (let ((pos (<group>-first self))
	(lim (<group>-last  self)))
    (while (!= pos lim)
      (dump (<token>-value pos))
      (print " ")
      (set pos (<token>-tail pos))))
  (print "}"))

(define-function group-empty? (self)
  (= (<group>-first self) (<group>-last  self)))

(define-function group-length (self)
  (let ((tok (<group>-first self))
	(lim (<group>-last  self))
	(len 0))
    (while (!= tok lim)
      (set len (+ len 1))
      (set tok (<token>-tail tok)))
    len))

(define-function group-append (self value . stream)
  (let ((tok  (token))
	(last (<group>-last self)))
    (set (<token>-value    last) value)
    (set (<token>-tail     last) tok)
    (set (<token>-position last) ($source-position (car stream)))
    (set (<group>-last     self) tok)))

(define-function group-append-list (self list)
  (while (pair? list)
    (group-append self (car list))
    (set list (cdr list))))

(define-function group->string (self)
  (let* ((len (group-length self))
	 (str (string len))
	 (idx 0)
	 (tok (<group>-first self)))
    (while (< idx len)
      (set (string-at str idx) (<token>-value tok))
      (set tok (<token>-tail tok))
      (set idx (+ idx 1)))
    str))

(define-selector group->list (self) self)

(define-function set-pair-source-position (obj pos)
  (set (<pair>-source obj) pos)
  obj)

(define-function make-group->list (first last)
  (and (!= first last)
       (set-pair-source-position
	 (cons (<token>-value first)
	       (make-group->list (<token>-tail first) last))
	  (<token>-position first)
	  )))

(define-method group->list <group> ()
  (make-group->list (<group>-first self) (<group>-last self)))

(define-function group->list! (self)
  (group->list self)
)



;(unit-test "<group>"
;  (let ((g (group)))			(unit-assert (= 0 (group-length g)))	(unit-assert (equal (group->list g) '()))
;    (group-append g 'foo)		(unit-assert (= 1 (group-length g)))	(unit-assert (equal (group->list g) '(foo)))
;    (group-append g 'bar)		(unit-assert (= 2 (group-length g)))	(unit-assert (equal (group->list g) '(foo bar)))
;    (group-append-list g '(baz qux))	(unit-assert (= 4 (group-length g)))	(unit-assert (equal (group->list g) '(foo bar baz qux)))))



