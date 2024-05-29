(define-module abc345a
  (export abc345a))
(select-module abc345a)

(define (only-lines? between)
  (define (go between n)
    (if (>= n (string-length between))
        #t
        (and (char=? #\= (string-ref between n))
             (go between (+ n 1)))))
  (go between 0))

(define (bidirectional? arrow)
  (and (< 2 (string-length arrow))
       (char=? #\< (string-ref arrow 0))
       (char=? #\> (string-ref arrow (- (string-length arrow) 1)))
       (only-lines? (substring arrow 1 (- (string-length arrow) 1)))))

(define (abc345a)
  (let ((arrow (read-line (current-input-port))))
    (if (bidirectional? arrow)
        (print "Yes")
        (print "No"))))