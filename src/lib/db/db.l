; Welcome to the slowest EAV store DB in the world
; Needs to map everything into memory
; Appends chenges only but then needs to read everything again
; It's simple to understand what's going on but it confounds file IO
; with data structures and. It's also simple to see how some of this might be
; trivially improved.

; Lot's of love needed
; TODO an actual DB structure + actor / object


; Datums
(defn new-datum (entity attribute value)
  (list entity attribute value))

(defn datum-entity (datum)
  (first datum))
(defn datum-attribute (datum)
  (second datum))
(defn datum-value (datum)
  (nth 3 datum))
(defn datum-transaction (datum)
  (nth 4 datum))


; private

(defn new-db (store-path transaction db-val)
  ; TODO validate
  (list store-path transaction db-val))
(defn db-store-path (db)
  (first db))
(defn db-current-transaction (db)
  (second db))
(defn db-val (db)
  (nth 3 db))

(defn final-datum (datum transaction)
  (list (datum-entity datum) (datum-attribute datum) (datum-value datum) transaction))



;; Database -----------------------------

; An opaque DB "object"
; encloses the path to the sotre (directory must exist)
; starts a new stransaction counter at 0
; XXX blah to much file stuff leaking in here.

(defn db-open (store-path)
  ; eventually separate the query aspects from the transactor
  ; XXX TODO let* in modernity:1
  (let ((db-val (read store-path))
        (transaction 0))
    ; TODO db consistency check on load
    ; XXX assuming DB serialization is well formed - file ordered by transactions strictly monotonic
    (if (pair? db-val) (set transaction (datum-transaction (last db-val))))
    (new-db store-path transaction db-val)))

(defn db-add-fact (db datum)
  ; TODO validate datum
  ; TODO validate the
  ; TODO validate DB
  (append (db-store-path db) (repr (final-datum datum (+ 1 (db-current-transaction db)))))
  (append (db-store-path db) "\n")
  (db-open (db-store-path db)))





;(if (= '() (db-val db))
      ;(let ((last-pair (cons datum '())))
        ;(new-db (db-store-path db) commit-transaction last-pair last-pair))
      ;(let )
         ;Ick side effects
        ;(seq-append (db-last-pair db) datum))
        ;(new-db (db-store-path db) commit-transaction (db-val db) (db-last-pair db)))))

