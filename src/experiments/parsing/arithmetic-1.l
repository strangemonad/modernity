;; A hand rolled parser for an infix arithmetic language

(require "src/lib/stream.m")
; (require "src/lib/parser/parser-stream.l")

(def s (string-stream "hello world"))

;; numbers
(defn digit (ch)
  (or (and (= ch ?0) 0)
      ()))

(defn number (chs)
  (while (digit (ch $next)))
