(define-module beginners.328
  (export abc328))
(select-module beginners.328)

(define (sum-allotments-below precondition allotments)
  (reduce + 0 (filter (lambda (allotment) (<= allotment precondition)) allotments)))

(define (abc328)
  (let ((preconditions (map string->number
                            (string-split (read-line (current-input-port))
                                          " ")))
        (allotments (map string->number
                         (string-split (read-line (current-input-port))
                                       " "))))
    (print (sum-allotments-below (list-ref preconditions 1) allotments))))