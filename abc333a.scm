(define-module abc333a
  (export abc333a))
(select-module abc333a)

(define (repeat-string-by-power n)
  (let ((c (integer->digit n)))
    (make-string n c)))

(define (abc333a)
  (let ((n (string->number (read-line (current-input-port)))))
    (print (repeat-string-by-power n))))