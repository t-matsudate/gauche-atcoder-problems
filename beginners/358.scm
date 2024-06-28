(define-module beginners.358
  (export abc358))
(select-module beginners.358)

(define (atcoder-land? line)
  (equal? "AtCoder Land" line))

(define (abc358)
  (let ((line (read-line (current-input-port))))
    (if (atcoder-land? line)
        (print "Yes")
        (print "No"))))