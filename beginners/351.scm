(define-module beginners.351
  (export abc351))
(select-module beginners.351)

(define (reversal-score scores-a scores-b)
  (let ((total-a (reduce + 0 scores-a))
        (total-b (reduce + 0 scores-b)))
    (- total-a total-b -1)))

(define (abc351)
  (let ((scores-a (map string->number
                       (string-split (read-line (current-input-port))
                                     " ")))
        (scores-b (map string->number
                       (string-split (read-line (current-input-port))
                                     " "))))
    (print (reversal-score scores-a scores-b))))