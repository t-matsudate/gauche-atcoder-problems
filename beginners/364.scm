(define-module beginners.364
  (export abc364a))
(select-module beginners.364)

(define (read-tastes n)
  (if (<= n 0)
      '()
      (let ((taste (read-line (current-input-port))))
        (cons taste (read-tastes (- n 1))))))

(define (too-sweet? tastes)
  (if (<= (length tastes) 2)
      #f
      (or (and (equal? "sweet" (list-ref tastes 0))
               (equal? "sweet" (list-ref tastes 1)))
          (too-sweet? (cdr tastes)))))

(define (abc364a)
  (let* ((n (string->number (read-line (current-input-port))))
         (tastes (read-tastes n)))
    (if (not (too-sweet? tastes))
        (print "Yes")
        (print "No"))))