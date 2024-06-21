(define-module beginners.346
  (export abc346))
(select-module beginners.346)

(define (adjacent-product n numbers)
  (if (< n 2)
      '()
      (let ((item (* (list-ref numbers 0) (list-ref numbers 1))))
        (cons item (adjacent-product (- n 1) (cdr numbers))))))

(define (abc346)
  (let ((n (string->number (read-line (current-input-port))))
        (numbers (map string->number
                      (string-split (read-line (current-input-port))
                                    " "))))
    (apply print (intersperse #\space (adjacent-product n numbers)))))