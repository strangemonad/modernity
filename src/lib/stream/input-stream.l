(define-structure <input-stream> (source pending srcpos))

(define-function input-stream (source path)
  (let ((self (new <input-stream>)))
    (set (<input-stream>-source self) source)
    (set (<input-stream>-srcpos self) (cons path 0))
    self))


(define-method $at-end <input-stream> ()
  (= () ($peek self)))

(define-method $peek <input-stream> ()
  (or self.pending
    (if self.source
      (let ((c (getc self.source)))
        (if c
          (let ()
            (and (= ?\n c)
                 (set self.srcpos (cons (car self.srcpos)
                   (+ 1 (cdr self.srcpos)))))

            (set self.pending c))
          (or (= self.source *input*) (close self.source))
          (set self.source ())
          (set self.pending *end*)))

      (set self.pending *end*))))

(define-method $next <input-stream> ()
  (let ((c ($peek self)))
    (set (<input-stream>-pending self) ())
    c))

(define-method $source-position <input-stream> ()
  self.srcpos)

(defn input-stream-up-to (self delimiter)
  (let ((a (array)))
    (while (!= delimiter ($peek self))
      (array-append a ($next self)))
    (array->string a)))

