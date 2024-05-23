(define-module abc350a
  (export abc350a))
(select-module abc350a)

(define (past? contest)
  (let ((n (string->number (substring contest 3 (string-length contest)))))
    (and (> 350 n 0) (not (= 316 n)))))

(define (abc350a)
  (let ((contest (read-line (current-input-port))))
    (if (past? contest)
        (print "Yes")
        (print "No"))))