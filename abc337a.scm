(define-module abc337a
  (export abc337a))
(select-module abc337a)

(define (read-scores n)
  (if (<= n 0)
      '()
      (let ((score (map string->number
                        (string-split (read-line (current-input-port))
                                      " "))))
        (cons score (read-scores (- n 1))))))

(define (sum-scores scores)
  (reduce (lambda (ret item) (list (+ (list-ref ret 0) (list-ref item 0))
                                   (+ (list-ref ret 1) (list-ref item 1))))
          '(0 0)
          scores))

(define (abc337a)
  (let* ((n (string->number (read-line (current-input-port))))
         (scores (sum-scores (read-scores n))))
    (cond ((> (list-ref scores 0) (list-ref scores 1)) (print "Takahashi"))
          ((< (list-ref scores 0) (list-ref scores 1)) (print "Aoki"))
          (else (print "Draw")))))