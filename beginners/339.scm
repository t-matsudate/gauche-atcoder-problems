(define-module beginners.339
  (export abc339))
(select-module beginners.339)

(define (find-tld line)
  (or (string-scan-right line "." 'after) ""))

(define (abc339)
  (let ((line (read-line (current-input-port))))
    (print (find-tld line))))