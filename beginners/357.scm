(define-module beginners.357
  (export abc357a
          abc357b))
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

(define (abc357a)
  (let ((preconditions (map string->number
                            (string-split (read-line (current-input-port))
                                          " ")))
        (line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (print (count-sanitized (list-ref preconditions 1) line))))

(define (adjusted-case line)
  (let ((uppers (count char-upper-case? (string->list line)))
        (lowers (count char-lower-case? (string->list line))))
    (if (> uppers lowers)
        (string-map char-upcase line)
        (string-map char-downcase line))))

(define (abc357b)
  (let ((line (read-line (current-input-port))))
    (print (adjusted-case line))))