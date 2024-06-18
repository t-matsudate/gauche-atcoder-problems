(define-module abc323a
  (export abc323a))
(select-module abc323a)

(define (zero-at-even-pos? line)
  (define len (string-length line))
  (define (go index line)
    (if (>= (* index 2) len)
        #t
        (and (equal? #\0 (string-ref line (+ (* index 2) 1)))
             (go (+ index 1) line))))
  (go 0 line))

(define (abc323a)
  (let ((line (read-line (current-input-port))))
    (if (zero-at-even-pos? line)
        (print "Yes")
        (print "No"))))