(define-module beginners.355
  (export abc355))
(select-module beginners.355)

(define candidates '(1 2 3))

(define (find-criminal a b)
  (let ((remained (remove (lambda (candidate) (or (= a candidate) (= b candidate)))
                          candidates)))
    (if (> (length remained) 1)
        -1
        (car remained))))

(define (abc355)
  (let ((line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (print (find-criminal (list-ref line 0)
                          (list-ref line 1)))))