(define-module beginners.334
  (export abc334))
(select-module beginners.334)

(define (which-buy? bat glove)
  (if (> bat glove)
      "Bat"
      "Glove"))

(define (abc334)
  (let ((line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (print (which-buy? (list-ref line 0) (list-ref line 1)))))