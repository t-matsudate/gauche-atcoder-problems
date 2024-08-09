(define-module beginners.351
  (export abc351a
          abc351b))
(select-module beginners.351)

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

(define (read-grid n)
  (if (<= n 0)
      '()
      (let ((row (read-line (current-input-port))))
        (cons row (read-grid (- n 1))))))

(define (differ-at str-a str-b)
  (define (go index)
    (if (equal? (string-ref str-a index) (string-ref str-b index))
        (go (+ index 1))
        (+ index 1)))
  (go 0))

(define (find-different-coordinate a b)
  (define (go a b n)
    (let ((current-a (vector-ref a n))
          (current-b (vector-ref b n)))
      (if (equal? current-a current-b)
          (go a b (+ n 1))
          (list (+ n 1) (differ-at current-a current-b)))))
  (go a b 0))

(define (abc351b)
  (let* ((n (string->number (read-line (current-input-port))))
         (a (read-grid n))
         (b (read-grid n)))
    (apply print (intersperse #\space (find-different-coordinate (list->vector a) (list->vector b))))))