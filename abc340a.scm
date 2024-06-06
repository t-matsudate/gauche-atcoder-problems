(define-module abc340a
  (export abc340a))
(select-module abc340a)

(define (make-sequence start end step)
  (lrange start (+ end 1) step))

(define (abc340a)
  (let ((line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (apply print
           (intersperse #\space
                        (make-sequence (list-ref line 0)
                                       (list-ref line 1)
                                       (list-ref line 2))))))