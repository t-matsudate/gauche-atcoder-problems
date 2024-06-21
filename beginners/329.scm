(define-module beginners.329
  (export abc329))
(select-module beginners.329)

(define (spread line)
  (intersperse #\space (string->list line)))

(define (abc329)
  (let ((line (read-line (current-input-port))))
    (apply print (spread line))))