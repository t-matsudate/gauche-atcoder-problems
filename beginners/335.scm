(define-module beginners.335
  (export abc335))
(select-module beginners.335)

(define (change-year line)
  (string-set! line (- (string-length line) 1) #\4))

(define (abc335)
  (let ((line (read-line (current-input-port))))
    (print (change-year line))))