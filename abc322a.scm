(define-module abc322a
  (export abc322a))
(select-module abc322a)

(define (scan-abc line)
  (or (string-scan line "ABC") -2))

(define (abc322a)
  (let* ((n (string->number (read-line (current-input-port))))
         (line (read-line (current-input-port))))
    (print (+ (scan-abc line) 1))))