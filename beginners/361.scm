(define-module beginners.361
  (export abc361a))
(select-module beginners.361)

(define (insert-number numbers index number)
  (append (take numbers index)
          (list number)
          (drop numbers index)))

(define (abc361a)
  (let* ((preconditions (map string->number
                             (string-split (read-line (current-input-port))
                                           " ")))
         (numbers (map string->number
                       (string-split (read-line (current-input-port))
                                     " "))))
    (apply print
           (intersperse #\space
                        (insert-number numbers
                                       (list-ref preconditions 1)
                                       (list-ref preconditions 2))))))