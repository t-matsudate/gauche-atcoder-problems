(define-module beginners.352
  (export abc352a
          abc352b))
(select-module beginners.352)

(define (transit? station-x station-y station-z)
  (<= (min station-x station-y) station-z (max station-x station-y)))

(define (abc352a)
  (let* ((line (map string->number
                    (string-split (read-line (current-input-port))
                                  " ")))
         (station-x (list-ref line 1))
         (station-y (list-ref line 2))
         (station-z (list-ref line 3)))
    (if (transit? station-x station-y station-z)
        (print "Yes")
        (print "No"))))

(define (find-correct-positions expected actual)
  (define (go ret index expected actual)
    (cond ((or (null? expected) (null? actual)) (reverse ret))
          ((equal? (car expected) (car actual))
           (go (cons (+ index 1) ret)
               (+ index 1)
               (cdr expected)
               (cdr actual)))
          (else (go ret
                    (+ index 1)
                    expected
                    (cdr actual)))))
  (go '() 0 expected actual))

(define (abc352b)
  (let* ((expected (read-line (current-input-port)))
         (actual (read-line (current-input-port))))
    (apply print
           (intersperse #\space
                        (find-correct-positions (string->list expected)
                                                (string->list actual))))))