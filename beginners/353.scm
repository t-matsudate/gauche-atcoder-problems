(define-module beginners.353
  (export abc353))
(select-module beginners.353)

(define (find-higher buildings)
  (define (go ret first buildings)
    (if (null? buildings)
        -1
        (if (< first (car buildings))
            ret
            (go (+ ret 1) first (cdr buildings)))))
  (go 2 (car buildings) (cdr buildings)))

(define (abc353)
  (let ((n (string->number (read-line (current-input-port))))
        (buildings (map string->number
                        (string-split (read-line (current-input-port))
                                      " "))))
    (print (find-higher buildings))))