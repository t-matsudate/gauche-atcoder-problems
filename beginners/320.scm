(define-module beginners.320
  (export abc320))
(select-module beginners.320)

(define (add-swapped-powers a b)
  (+ (expt a b) (expt b a)))

(define (abc320)
  (let ((numbers (map string->number
                      (string-split (read-line (current-input-port))
                                    " "))))
    (print (add-swapped-powers (list-ref numbers 0)
                               (list-ref numbers 1)))))