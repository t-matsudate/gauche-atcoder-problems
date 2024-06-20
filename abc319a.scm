(define-module abc319a
  (export abc319a))
(select-module abc319a)

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

(define (abc319a)
  (let ((line (read-line (current-input-port))))
    (print (get-rating line ratings))))