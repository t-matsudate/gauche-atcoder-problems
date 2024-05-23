(define-module abc349a
  (export abc349a))
(select-module abc349a)

(define (negate-score scores)
  (let ((total (reduce + 0 scores)))
    (- total)))

(define (abc349a)
  (let ((n (string->number (read-line (current-input-port))))
        (scores (map string->number
                     (string-split (read-line (current-input-port))
                                   " "))))
    (print (negate-score scores))))