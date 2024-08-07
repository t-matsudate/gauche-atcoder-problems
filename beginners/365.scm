(define-module beginners.365
  (export abc365a
          abc365b))
(select-module beginners.365)

(define (days-of-year year)
  (cond ((positive? (remainder year 4)) 365)
        ((and (zero? (remainder year 4)) (positive? (remainder year 100))) 366)
        ((and (zero? (remainder year 100)) (positive? (remainder year 400))) 365)
        ((zero? (remainder year 400)) 366)))

(define (abc365a)
  (let ((year (string->number (read-line (current-input-port)))))
    (print (days-of-year year))))

(define (index-of-second-higher numbers)
  (define sorted (sort numbers >))
  (define second-higher (list-ref sorted 1))
  (define (go numbers)
    (if (null? numbers)
        0
        (if (= second-higher (car numbers))
            1
            (+ 1 (go (cdr numbers))))))
  (go numbers))

(define (abc365b)
  (let* ((n (string->number (read-line (current-input-port))))
         (numbers (map string->number
                       (string-split (read-line (current-input-port))
                                     " "))))
    (print (index-of-second-higher numbers))))