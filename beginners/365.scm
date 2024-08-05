(define-module beginners.365
  (export abc365a))
(select-module beginners.365)

(define (days-of-year year)
  (cond ((positive? (remainder year 4)) 365)
        ((and (zero? (remainder year 4)) (positive? (remainder year 100))) 366)
        ((and (zero? (remainder year 100)) (positive? (remainder year 400))) 365)
        ((zero? (remainder year 400)) 366)))

(define (abc365a)
  (let ((year (string->number (read-line (current-input-port)))))
    (print (days-of-year year))))