;;; Streams - endless ordered collections

; The informal protocol for now until we have more formal protocols

; this can really be reduced to $next
; next when at end of stream will be ()? or *end*?
; peek can be accomplished by a buffering iteratee or generator etc.

(define-selector $at-end?)
(define-selector $peek)
(define-selector $next)

(define-structure <*end-of-stream-marker*> ())
(define *end* (new <*end-of-stream-marker*>))
(define-method do-print <*end-of-stream-marker*> ()
  (print "<*end-of-stream-marker*>"))


(require "src/lib/stream/string-stream.m")
(require "src/lib/stream/list-stream.m")
(require "src/lib/stream/input-stream.m")
