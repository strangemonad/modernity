(define-structure <list-stream> (source))

; source - ?
(defn list-stream (source)
  (let ((self (new <list-stream>)))
    (set (<list-stream>-source self) source)

    self))

(define-method $at-end <list-stream> ()
  (not self.source))

(define-method $peek <list-stream> ()
  (if self.source
      (car self.source)
    *end*))

(define-method $next <list-stream> ()
  (if self.source
      (let ((value (car self.source)))
	(set self.source (cdr self.source))
	value)
    *end*))

(define-method $source-position <list-stream> () ())

