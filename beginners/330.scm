(define-module beginners.330
  (export abc330))
(select-module beginners.330)

(define (count-passes marks passing-mark)
  (length (filter (lambda (mark) (>= mark passing-mark)) marks)))

(define (abc330)
  (let ((n+l (map string->number
                  (string-split (read-line (current-input-port))
                                " ")))
        (marks (map string->number
                    (string-split (read-line (current-input-port))
                                  " "))))
    (print (count-passes marks (list-ref n+l 1)))))