(define-module beginners.357
  (export abc357))
(select-module beginners.357)

(define (count-sanitized remained aliens)
  (define (go ret remained aliens)
    (if (null? aliens)
        ret
        (let ((alien (car aliens)))
          (if (negative? (- remained alien))
              ret
              (go (+ ret 1) (- remained alien) (cdr aliens))))))
  (go 0 remained aliens))

(define (abc357)
  (let ((preconditions (map string->number
                            (string-split (read-line (current-input-port))
                                          " ")))
        (line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (print (count-sanitized (list-ref preconditions 1) line))))