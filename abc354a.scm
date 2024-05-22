(define-module abc354a
  (export abc354a))
(select-module abc354a)

(define (exceeds-after height)
  (integer-length (+ 1 height)))

(define (abc354a)
  (let ((height (string->number (read-line (current-input-port)))))
    (print (exceeds-after height))))