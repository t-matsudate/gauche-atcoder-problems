(define-module beginners.349
  (export abc349))
(select-module beginners.349)

(define (negate-score scores)
  (let ((total (reduce + 0 scores)))
    (- total)))

(define (abc349)
  (let ((n (string->number (read-line (current-input-port))))
        (scores (map string->number
                     (string-split (read-line (current-input-port))
                                   " "))))
    (print (negate-score scores))))