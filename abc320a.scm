(define-module abc320a
  (export abc320a))
(select-module abc320a)

(define (add-swapped-powers a b)
  (+ (expt a b) (expt b a)))

(define (abc320a)
  (let ((numbers (map string->number
                      (string-split (read-line (current-input-port))
                                    " "))))
    (print (add-swapped-powers (list-ref numbers 0)
                               (list-ref numbers 1)))))