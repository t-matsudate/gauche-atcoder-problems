(define-module beginners.326
  (export abc326))
(select-module beginners.326)

(define (use-step? from to)
  (<= -3 (- to from) 2))

(define (abc326)
  (let ((line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (if (use-step? (list-ref line 0)
                   (list-ref line 1))
        (print "Yes")
        (print "No"))))