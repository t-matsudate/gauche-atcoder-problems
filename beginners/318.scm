(define-module beginners.318
  (export abc318))
(select-module beginners.318)

(define (fullmoon-days total start step)
  (length (lrange start (+ total 1) step)))

(define (abc318)
  (let ((line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (print (fullmoon-days (list-ref line 0)
                          (list-ref line 1)
                          (list-ref line 2)))))