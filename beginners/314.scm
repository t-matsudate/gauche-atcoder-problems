(define-module beginners.314
  (export abc314))
(select-module beginners.314)

(define pi "3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679")

(define (truncate-pi n)
  (substring pi 0 (+ n 2)))

(define (abc314)
  (let ((n (string->number (read-line (current-input-port)))))
    (print (truncate-pi n))))