(define-module abc318a
  (export abc318a))
(select-module abc318a)

(define (fullmoon-days total start step)
  (length (lrange start (+ total 1) step)))

(define (abc318a)
  (let ((line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (print (fullmoon-days (list-ref line 0)
                          (list-ref line 1)
                          (list-ref line 2)))))