;; XXX TODO ditch this in favor of 2 abstractions
;; 1) a unifying seq abstraction just like Clojure
;; 2) a parser (or parser state) object

(define-structure <parser-stream> (source position index))

; source - a stream
(defn parser-stream (source)
  (let ((self (new <parser-stream>)))
    (set (<parser-stream>-source self)   source)
    (set (<parser-stream>-position self) (token ($next source) 0 ($source-position (<parser-stream>-source self))))
    (set (<parser-stream>-index self) 0)
    self))

(defn parser-stream-at-end (self)
  (and (= *end* (<token>-value (<parser-stream>-position self)))))

(defn parser-stream-peek-token (self)
  (<parser-stream>-position self))

(defn parser-stream-peek (self)
  (<token>-value (<parser-stream>-position self)))

(defn parser-stream-next-token (self)
  (let ((here (<parser-stream>-position self)))
    (or (= *end* (<token>-value here))
	(let ((tail (<token>-tail here)))
	  (set (<parser-stream>-position self)
	       (or tail (set (<token>-tail here)
			     (token ($next (<parser-stream>-source self))
				    (incr (<parser-stream>-index self) 1)
				    ($source-position (<parser-stream>-source self))
				    ))))))
    here))

(defn parser-stream-next (self)
  (<token>-value (parser-stream-next-token self)))

(defn parser-stream-push-token (self token)
  (set (<token>-tail token) (<parser-stream>-position self))
  (set (<parser-stream>-position self) token))

(defn parser-stream-push (self value)
  (parser-stream-push-token self (token value (<parser-stream>-index self) ($source-position (<parser-stream>-source self)))))

(defn parser-stream-match-object (self value)
  (and (= value (parser-stream-peek self))
       (parser-stream-next self)))

; xxx refactor out
(define-function binary-search (seq obj cmp)
  (let ((lo 0)
        (hi (- ($size seq) 1))
        (ix ()))

    (while (and (not ix) (<= lo hi))
      (let* ((m (/ (+ lo hi) 2))
             (s ($at seq m)))
        (cond
          ((cmp obj s) (set hi (- m 1)))
          ((cmp s obj) (set lo (+ m 1)))
          (else        (set ix m)))))

    (or ix -1)))

(defn parser-stream-match-any (self)
  (and (!= *end* (parser-stream-peek self))
       (parser-stream-next self)))


(defn parser-stream-match-class (self class)
  (let ((obj (parser-stream-peek self)))

    (and (long? obj)
         (<= 0 (binary-search class obj <))
         (parser-stream-next self))))

(defn parser-stream-fail (self position)
  (set (<parser-stream>-position self) position)
  ())

(defn parser-stream-match-string (self str)
  (let ((pos (<parser-stream>-position self))
	(idx 0)
	(lim (string-length str)))
    (while (and (< idx lim) (parser-stream-match-object self (string-at str idx)))
      (set idx (+ idx 1)))
    (if (= idx lim)
	str
      (parser-stream-fail self pos))))

(defn parser-stream-context (self)
  (let ((a (array)))
    (while (and (<token>-tail (parser-stream-peek-token self)) (!= *end* (parser-stream-peek self)))
      (array-append a (parser-stream-next self)))
    (and (> (array-length a) 0)
	 (string-do c "[31;1m<!>[30;0m" (array-append a c)))
    (for (i 0 32)
      (if (!= *end* (parser-stream-peek self))
	  (array-append a (parser-stream-next self))
	(string-do c "[34;1m<EOF>[30;0m" (array-append a c))
	(set i 999)))
    ;;(array-do x a (println x))
    (array->string a)))

(define-method $source-position <parser-stream> () ($source-position self.source))

