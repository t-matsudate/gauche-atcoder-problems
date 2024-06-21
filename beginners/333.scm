(define-module beginners.333
  (export abc333))
(select-module beginners.333)

(define (repeat-string-by-power n)
  (let ((c (integer->digit n)))
    (make-string n c)))

(define (abc333)
  (let ((n (string->number (read-line (current-input-port)))))
    (print (repeat-string-by-power n))))