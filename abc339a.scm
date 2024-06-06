(define-module abc339a
  (export abc339a))
(select-module abc339a)

(define (find-tld line)
  (or (string-scan-right line "." 'after) ""))

(define (abc339a)
  (let ((line (read-line (current-input-port))))
    (print (find-tld line))))