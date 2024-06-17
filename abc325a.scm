(define-module abc325a
  (export abc325a))
(select-module abc325a)

(define (append-san line)
  (let ((family-name-pos (or (string-scan line " ") (string-length line))))
    (string-append (substring line 0 family-name-pos) " san")))

(define (abc325a)
  (let ((line (read-line (current-input-port))))
    (print (append-san line))))