(define-module abc335a
  (export abc335a))
(select-module abc335a)

(define (change-year line)
  (string-set! line (- (string-length line) 1) #\4))

(define (abc335a)
  (let ((line (read-line (current-input-port))))
    (print (change-year line))))