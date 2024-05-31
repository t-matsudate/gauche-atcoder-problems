(define-module abc343a
  (export abc343a))
(select-module abc343a)

(define (another-number a b)
  (if (< (+ a b) 9)
      (+ a b 1)
      (- (+ a b) 1)))

(define (abc343a)
  (let ((a+b (map string->number
                  (string-split (read-line (current-input-port))
                                " "))))
    (print (another-number (list-ref a+b 0) (list-ref a+b 1)))))