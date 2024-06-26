(define-module beginners.317
  (export abc317))
(select-module beginners.317)

(define (take-while pred sequence)
  (if (null? sequence)
      '()
      (let ((item (car sequence)))
        (if (not (pred item))
            '()
            (cons item (take-while pred (cdr sequence)))))))

(define (find-recoverable-ointment current expect ointments)
  (+ 1 (length (take-while (lambda (ointment) (< (+ current ointment) expect))
                           ointments))))

(define (abc317)
  (let* ((preconditions (map string->number
                             (string-split (read-line (current-input-port))
                                           " ")))
         (ointments (map string->number
                         (string-split (read-line (current-input-port))
                                       " "))))
    (print (find-recoverable-ointment (list-ref preconditions 1)
                                      (list-ref preconditions 2)
                                      ointments))))