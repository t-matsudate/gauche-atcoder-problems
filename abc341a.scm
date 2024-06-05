(define-module abc341a
  (export abc341a))
(select-module abc341a)

(define (make-binary n)
  (let ((ones (make-list (+ n 1) #\1)))
    (list->string (intersperse #\0 ones))))

(define (abc341a)
  (let ((n (string->number (read-line (current-input-port)))))
    (print (make-binary n))))