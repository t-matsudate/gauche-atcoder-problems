(define-module beginners.354
  (export abc354))
(select-module beginners.354)

(define (exceeds-after height)
  (integer-length (+ 1 height)))

(define (abc354)
  (let ((height (string->number (read-line (current-input-port)))))
    (print (exceeds-after height))))