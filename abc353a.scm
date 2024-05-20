(define-module abc353a
  (export abc353a))
(select-module abc353a)

(define (find-higher hs)
  (define (go ret head hs)
    (if (null? hs)
        -1
        (if (< head (car hs))
            ret
            (go (+ ret 1) head (cdr hs)))))
  (go 2 (car hs) (cdr hs)))

(define (abc353a)
  (let ((n (string->number (read-line (current-input-port))))
        (hs (map string->number
                (string-split (read-line (current-input-port))
                              " "))))
    (print (find-higher hs))))