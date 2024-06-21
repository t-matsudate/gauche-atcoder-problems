(define-module beginners.350
  (export abc350))
(select-module beginners.350)

(define (past? contest)
  (let ((n (string->number (substring contest 3 (string-length contest)))))
    (and (> 350 n 0) (not (= 316 n)))))

(define (abc350)
  (let ((contest (read-line (current-input-port))))
    (if (past? contest)
        (print "Yes")
        (print "No"))))