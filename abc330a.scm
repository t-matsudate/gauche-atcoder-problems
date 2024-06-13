(define-module abc330a
  (export abc330a))
(select-module abc330a)

(define (count-passes marks passing-mark)
  (length (filter (lambda (mark) (>= mark passing-mark)) marks)))

(define (abc330a)
  (let ((n+l (map string->number
                  (string-split (read-line (current-input-port))
                                " ")))
        (marks (map string->number
                    (string-split (read-line (current-input-port))
                                  " "))))
    (print (count-passes marks (list-ref n+l 1)))))