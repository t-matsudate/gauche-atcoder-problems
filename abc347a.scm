(define-module abc347a
  (export abc347a))
(select-module abc347a)

(define (map-by-divisible k numbers)
  (if (null? numbers)
      '()
      (let ((item (car numbers)))
        (if (zero? (remainder item k))
            (cons (quotient item k) (map-by-divisible k (cdr numbers)))
            (map-by-divisible k (cdr numbers))))))

(define (abc347a)
  (let ((n+k (map string->number
                  (string-split (read-line (current-input-port))
                                " ")))
        (numbers (map string->number
                      (string-split (read-line (current-input-port))
                                    " "))))
    (apply print (intersperse #\space (map-by-divisible (list-ref n+k 1) numbers)))))