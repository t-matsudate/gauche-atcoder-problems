(define-module beginners.319
  (export abc319))
(select-module beginners.319)

(define ratings
  '(("tourist" . 3858)
    ("ksun48" . 3679)
    ("Benq" . 3658)
    ("Um_nik" . 3648)
    ("apiad" . 3638)
    ("Stonefeang" . 3630)
    ("ecnerwala" . 3613)
    ("mnbvmar" . 3555)
    ("newbiedmy" . 3516)
    ("semiexp" . 3481)))

(define (get-rating line ratings)
  (let ((item (car ratings)))
    (if (equal? line (car item))
        (cdr item)
        (get-rating line (cdr ratings)))))

(define (abc319)
  (let ((line (read-line (current-input-port))))
    (print (get-rating line ratings))))