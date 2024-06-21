(define-module beginners.322
  (export abc322))
(select-module beginners.322)

(define (scan-abc line)
  (or (string-scan line "ABC") -2))

(define (abc322)
  (let* ((n (string->number (read-line (current-input-port))))
         (line (read-line (current-input-port))))
    (print (+ (scan-abc line) 1))))