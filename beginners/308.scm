(define-module beginners.308
  (export abc308))
(select-module beginners.308)

(define (increased? numbers)
  (if (< (length numbers) 2)
      #t
      (let ((current (list-ref numbers 0))
            (next (list-ref numbers 1)))
        (if (and (<= current next)
                 (<= 100 current 675)
                 (zero? (remainder current 25))
                 (<= 100 next 675)
                 (zero? (remainder next 25)))
            (increased? (cdr numbers))
            #f))))

(define (abc308)
  (let ((line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (if (increased? line)
        (print "Yes")
        (print "No"))))