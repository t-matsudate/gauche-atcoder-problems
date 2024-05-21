(define-module abc351a
  (export abc351a))
(select-module abc351a)

(define (reversal-score scores-a scores-b)
  (let ((total-a (reduce + 0 scores-a))
        (total-b (reduce + 0 scores-b)))
    (- total-a total-b -1)))

(define (abc351a)
  (let ((scores-a (map string->number
                       (string-split (read-line (current-input-port))
                                     " ")))
        (scores-b (map string->number
                       (string-split (read-line (current-input-port))
                                     " "))))
    (print (reversal-score scores-a scores-b))))