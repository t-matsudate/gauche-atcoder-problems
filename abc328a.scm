(define-module abc328a
  (export abc328a))
(select-module abc328a)

(define (sum-allotments-below precondition allotments)
  (reduce + 0 (filter (lambda (allotment) (<= allotment precondition)) allotments)))

(define (abc328a)
  (let ((preconditions (map string->number
                            (string-split (read-line (current-input-port))
                                          " ")))
        (allotments (map string->number
                         (string-split (read-line (current-input-port))
                                       " "))))
    (print (sum-allotments-below (list-ref preconditions 1) allotments))))