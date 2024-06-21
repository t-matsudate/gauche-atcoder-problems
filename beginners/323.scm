(define-module beginners.323
  (export abc323))
(select-module beginners.323)

(define (zero-at-even-pos? line)
  (define len (string-length line))
  (define (go index line)
    (if (>= (* index 2) len)
        #t
        (and (equal? #\0 (string-ref line (+ (* index 2) 1)))
             (go (+ index 1) line))))
  (go 0 line))

(define (abc323)
  (let ((line (read-line (current-input-port))))
    (if (zero-at-even-pos? line)
        (print "Yes")
        (print "No"))))