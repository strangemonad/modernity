; A manually written parser
; Understand the base elements and eventually grow into
; - seq abstraction
; - parser state
; - parser combinators
; - ...


; What's a parser?
;
; - A machine
; - consumes 0 or more objects from some input sequence
; - returns a result that depends if the input sequence matched some pattern


; 4 possibilities Match:BOOL X Consumed:BOOL


; Really simple example
; Is the first character of the input the character 'a'
; There might be more input, we don't care.
;(defn a? (input)
  ;(if (= ?a (first input))
      ;(list true (rest input))
      ;(list false input)))


;(println (a? '()))
;(println (a? (list ?h ?e ?l ?l ?o)))
;(println (a? (list ?a ?l ?l ?o)))
;(println)

;(defn d? (input)
  ;(if (= ?d (first input))
      ;(list true (rest input))
      ;(list false input)))

;(println (d? (list ?h ?e ?l ?l ?o)))
;(println (d? (list ?d ?a ?d)))
;(println)

;(defn eq-parser (obj)
  ;(fn (input)
    ;(if (= obj (first input))
      ;(list true (rest input))
      ;(list false input))))

;(def a? (eq-parser ?a))
;(def d? (eq-parser ?d))
;(println (d? (list ?h ?e ?l ?l ?o)))
;(println (d? (list ?d ?a ?d)))
;(println)

(defn advancing-matcher (predicate)
  (fn (next)
    (if (predicate next)
         (list true true)
         (list false false))))

(defn driver (matcher)
  (fn (input)
    (let ((m (matcher (first input))))
      (list (first m)
            (if (second m) (rest input) input)))))

(defn eq-parser (obj) (driver (advancing-matcher (fn (next) (= obj next)))))


(def a? (eq-parser ?a))
(def d? (eq-parser ?d))
(println (d? (list ?h ?e ?l ?l ?o)))
(println (d? (list ?d ?a ?d)))

(defn ad? (input)
  (let ((a (a? input)))
    (cond
      ((first a) (d? (second a)))
      (else      (list false (second a))))))

(println (ad? (list ?d ?a ?d)))
(println (ad? (list ?a ?d ?d)))

(defn add? (input)
  (let ((ad (ad? input)))
    (cond
      ((first ad) (d? (second ad)))
      (else      (list false (second ad))))))

(println (add? (list ?d ?a ?d)))
(println (add? (list ?a ?d ?d)))

