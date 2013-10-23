(compile-begin)


; (define malloc (extern 'malloc))

; (define foo (malloc 4))

; (defn %typecheck ($args)
;   (print $args))

; (define-structure <header> (size flags next type))
; ; (define-form size-of-structure (type)   (* 4 (array-at %structure-sizes (eval type))))

; (defn access-flags (val)
;   (let ((h (new <header>)))
;     (<header>-flags h)))

; (define malloc      (extern   'malloc))

; (define-function new_memory_block (size)
;   (let ((ptr (malloc size)))
;     (set (<header>-size  ptr) (- size (size-of-structure <header>)))
;     (set (<header>-flags ptr) 0)
;     (set (<header>-next  ptr) ptr)
;     ptr))

(define malloc (extern 'malloc))
(define printf (extern 'printf))

(defn main (argc argv)
  (let ((m (malloc 4)))
    (printf "hello %d\n" m)))

(compile-end)
