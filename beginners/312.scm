(define-module beginners.312
  (export abc312))
(select-module beginners.312)

(define valids '("ACE" "BDF" "CEG" "DFA" "EGB" "FAC" "GBD"))

(define (valid? line)
  (any (lambda (valid) (equal? line valid)) valids))

(define (abc312)
  (let ((line (read-line (current-input-port))))
    (if (valid? line)
        (print "Yes")
        (print "No"))))