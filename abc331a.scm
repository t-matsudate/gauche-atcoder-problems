(define-module abc331a
  (export abc331a))
(select-module abc331a)

(define (compute-tomorrow preconditions year month day)
  (cond ((< (list-ref preconditions 1) (+ day 1)) (compute-tomorrow preconditions year (+ month 1) 0))
        ((< (list-ref preconditions 0) month) (compute-tomorrow preconditions (+ year 1) 1 day))
        (else (list year month (+ day 1)))))

(define (abc331a)
  (let ((preconditions (map string->number
                            (string-split (read-line (current-input-port))
                                          " ")))
        (date (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (apply print
           (intersperse #\space
                        (compute-tomorrow preconditions
                                          (list-ref date 0)
                                          (list-ref date 1)
                                          (list-ref date 2))))))