(define-module abc334a
  (export abc334a))
(select-module abc334a)

(define (which-buy? bat glove)
  (if (> bat glove)
      "Bat"
      "Glove"))

(define (abc334a)
  (let ((line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (print (which-buy? (list-ref line 0) (list-ref line 1)))))