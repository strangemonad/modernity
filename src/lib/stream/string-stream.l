(define-structure <string-stream> (string size position))

(define-function string-stream (string)
  (let ((self (new <string-stream>)))
    (set (<string-stream>-string   self) string)
    (set (<string-stream>-size     self) (string-length string))
    (set (<string-stream>-position self) 0)
    self))

(define-method $at-end? <string-stream> ()
  (= self.position self.size))

(define-method $peek <string-stream> ()
  (let ((pos self.position))
    (if (< pos self.size)
    (string-at self.string pos)
      *end*)))

(define-method $next <string-stream> ()
  (let ((pos self.position))
    (if (< pos self.size)
      (let ((value (string-at self.string pos)))
        (set self.position (+ pos 1))
        value)
      *end*)))

(define-method $source-position <undefined> ())

(define-method $source-position <string-stream> ()
  (cons "<string>" self.position))

