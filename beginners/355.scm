(define-module beginners.355
  (export abc355a
          abc355b))
(select-module beginners.355)

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

(define (consecutive? numbers sub)
  (cond ((or (< (length sub) 2) (< (length numbers) 2)) #f)
        ((> (list-ref sub 0) (list-ref numbers 0)) (consecutive? (cdr numbers) sub))
        ((< (list-ref sub 0) (list-ref numbers 0)) (consecutive? numbers (cdr sub)))
        (else (or (= (list-ref sub 1) (list-ref numbers 1))
                  (consecutive? (cdr numbers) (cdr sub))))))

(define (abc355b)
  (let* ((preconditions (map string->number
                             (string-split (read-line (current-input-port))
                                           " ")))
         (sub (map string->number
                   (string-split (read-line (current-input-port))
                                 " ")))
         (numbers (map string->number
                       (string-split (read-line (current-input-port))
                                     " "))))
    (if (consecutive? (sort (append numbers sub) <) (sort sub <))
        (print "Yes")
        (print "No"))))