(define-module beginners.374
  (export abc374a
	  abc374b))
(select-module beginners.374)

(define (aisatsu? name)
  (let ((san-position (string-scan-right name "san")))
    (and (number? san-position) (= san-position (- (string-length name) 3)))))

(define (abc374a)
  (let ((name (read-line)))
    (if (aisatsu? name)
	(print "Yes")
	(print "No"))))

(define (find-diff s t)
  (define s-length (string-length s))
  (define t-length (string-length t))
  (define min-length (min s-length t-length))
  (define (go i)
    (if (>= i min-length)
	(if (= s-length t-length) -1 min-length)
	(if (not (char=? (string-ref s i) (string-ref t i)))
	    i
	    (go (+ i 1)))))
  (+ 1 (go 0)))

(define (abc347b)
  (let* ((s (read-line))
	 (t (read-line)))
    (print (find-diff s t))))
