(define-module beginners.340
  (export abc340))
(select-module beginners.340)

(define (make-sequence start end step)
  (lrange start (+ end 1) step))

(define (abc340)
  (let ((line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (apply print
           (intersperse #\space
                        (make-sequence (list-ref line 0)
                                       (list-ref line 1)
                                       (list-ref line 2))))))