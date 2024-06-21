(define-module beginners.336
  (export abc336))
(select-module beginners.336)

(define (make-dragon-string n)
  (string-append "L" (make-string n #\o) "n" "g"))

(define (abc336)
  (let ((n (string->number (read-line (current-input-port)))))
    (print (make-dragon-string n))))