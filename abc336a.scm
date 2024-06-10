(define-module abc336a
  (export abc336a))
(select-module abc336a)

(define (make-dragon-string n)
  (string-append "L" (make-string n #\o) "n" "g"))

(define (abc336a)
  (let ((n (string->number (read-line (current-input-port)))))
    (print (make-dragon-string n))))