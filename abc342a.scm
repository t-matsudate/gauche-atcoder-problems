(define-module abc342a
  (export abc342a))
(select-module abc342a)

(define (differ? a b)
  (not (equal? a b)))

(define (find-difference n line)
  (let ((a (string-ref line n))
        (b (string-ref line (+ n 1)))
        (c (string-ref line (+ n 2))))
    (cond ((and (differ? a b) (differ? a c)) (+ n 1))
          ((and (differ? b a) (differ? b c)) (+ n 2))
          ((and (differ? c a) (differ? c b)) (+ n 3))
          (else (find-difference (+ n 1) line)))))

(define (abc342a)
  (let ((line (read-line (current-input-port))))
    (print (find-difference 0 line))))