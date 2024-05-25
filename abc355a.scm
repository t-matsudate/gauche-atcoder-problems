(define-module abc355a
  (export abc355a))
(select-module abc355a)

(define candidates '(1 2 3))

(define (find-criminal a b)
  (let ((remained (remove (lambda (candidate) (or (= a candidate) (= b candidate)))
                          candidates)))
    (if (> (length remained) 1)
        -1
        (car remained))))

(define (abc355a)
  (let ((line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (print (find-criminal (list-ref line 0)
                          (list-ref line 1)))))