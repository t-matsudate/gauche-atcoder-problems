(define-module beginners.341
  (export abc341))
(select-module beginners.341)

(define (make-binary n)
  (let ((ones (make-list (+ n 1) #\1)))
    (list->string (intersperse #\0 ones))))

(define (abc341)
  (let ((n (string->number (read-line (current-input-port)))))
    (print (make-binary n))))