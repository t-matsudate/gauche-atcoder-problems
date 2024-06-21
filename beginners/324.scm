(define-module beginners.324
  (export abc324))
(select-module beginners.324)

(define (same? numbers)
  (let ((item (car numbers)))
    (and (every (lambda (number) (= item number)) (cdr numbers)) #t)))

(define (abc324)
  (let* ((n (string->number (read-line (current-input-port))))
         (numbers (map string->number
                       (string-split (read-line (current-input-port))
                                     " "))))
    (if (same? numbers)
        (print "Yes")
        (print "No"))))