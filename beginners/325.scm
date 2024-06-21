(define-module beginners.325
  (export abc325))
(select-module beginners.325)

(define (append-san line)
  (let ((family-name-pos (or (string-scan line " ") (string-length line))))
    (string-append (substring line 0 family-name-pos) " san")))

(define (abc325)
  (let ((line (read-line (current-input-port))))
    (print (append-san line))))