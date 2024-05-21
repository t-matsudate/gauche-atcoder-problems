(define-module abc352a
  (export abc352a))
(select-module abc352a)

(define (transit? x y z)
  (<= (min x y) z (max x y)))

(define (abc352a)
  (let* ((line (map string->number
                    (string-split (read-line (current-input-port))
                                  " ")))
         (x (list-ref line 1))
         (y (list-ref line 2))
         (z (list-ref line 3)))
    (if (transit? x y z)
        (print "Yes")
        (print "No"))))