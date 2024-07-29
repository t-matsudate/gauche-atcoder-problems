(define-module beginners.363
  (export abc363a))
(select-module beginners.363)

(define (next-caret rate)
  (cond ((< rate 100) (- 100 rate))
        ((< rate 200) (- 200 rate))
        ((< rate 300) (- 300 rate))
        (else (- 400 rate))))

(define (abc363a)
  (let ((rate (string->number (read-line (current-input-port)))))
    (print (next-caret rate))))