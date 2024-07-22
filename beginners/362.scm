(define-module beginners.362
  (export abc362a))
(select-module beginners.362)

(define (minimum-except-one rgb except)
  (cond ((equal? "Red" except) (min (list-ref rgb 1) (list-ref rgb 2)))
        ((equal? "Green" except) (min (list-ref rgb 0) (list-ref rgb 2)))
        ((equal? "Blue" except) (min (list-ref rgb 0) (list-ref rgb 1)))))

(define (abc362a)
  (let* ((rgb (map string->number
                   (string-split (read-line (current-input-port))
                                 " ")))
         (except (read-line (current-input-port))))
    (print (minimum-except-one rgb except))))