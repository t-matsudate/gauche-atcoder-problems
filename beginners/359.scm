(define-module beginners.359
  (export abc359a))
(select-module beginners.359)

(define (read-names n)
  (if (< n 1)
      '()
      (let ((name (read-line (current-input-port))))
        (cons name (read-names (- n 1))))))

(define (count-takahashi names)
  (length (filter (lambda (name) (equal? "Takahashi" name)) names)))

(define (abc359a)
  (let* ((n (string->number (read-line (current-input-port))))
         (names (read-names n)))
    (print (count-takahashi names))))