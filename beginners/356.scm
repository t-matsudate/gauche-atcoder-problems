(define-module beginners.356
  (export abc356))
(select-module beginners.356)

(define (reverse-partial-sequence n l r)
  (let ((reversed (lrange r (- l 1) -1))
        (before (lrange 1 l))
        (after (lrange (+ r 1) (+ n 1))))
    (append before reversed after)))

(define (abc356)
  (let ((line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (apply print
           (intersperse #\space
                        (reverse-partial-sequence (list-ref line 0)
                                                  (list-ref line 1)
                                                  (list-ref line 2))))))