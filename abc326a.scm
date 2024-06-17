(define-module abc326a
  (export abc326a))
(select-module abc326a)

(define (use-step? from to)
  (<= -3 (- to from) 2))

(define (abc326a)
  (let ((line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (if (use-step? (list-ref line 0)
                   (list-ref line 1))
        (print "Yes")
        (print "No"))))