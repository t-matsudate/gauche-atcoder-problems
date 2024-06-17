(define-module abc324a
  (export abc324a))
(select-module abc324a)

(define (same? numbers)
  (let ((item (car numbers)))
    (and (every (lambda (number) (= item number)) (cdr numbers)) #t)))

(define (abc324a)
  (let* ((n (string->number (read-line (current-input-port))))
         (numbers (map string->number
                       (string-split (read-line (current-input-port))
                                     " "))))
    (if (same? numbers)
        (print "Yes")
        (print "No"))))