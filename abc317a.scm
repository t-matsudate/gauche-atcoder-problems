(define-module abc317a
  (export abc317a))
(select-module abc317a)

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

(define (abc317a)
  (let* ((preconditions (map string->number
                             (string-split (read-line (current-input-port))
                                           " ")))
         (ointments (map string->number
                         (string-split (read-line (current-input-port))
                                       " "))))
    (print (find-recoverable-ointment (list-ref preconditions 1)
                                      (list-ref preconditions 2)
                                      ointments))))