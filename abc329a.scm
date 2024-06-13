(define-module abc329a
  (export abc329a))
(select-module abc329a)

(define (spread line)
  (intersperse #\space (string->list line)))

(define (abc329a)
  (let ((line (read-line (current-input-port))))
    (apply print (spread line))))