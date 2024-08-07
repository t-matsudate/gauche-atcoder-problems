(define-module beginners.364
  (export abc364a
          abc364b))
(select-module beginners.364)

(define (read-tastes n)
  (if (<= n 0)
      '()
      (let ((taste (read-line (current-input-port))))
        (cons taste (read-tastes (- n 1))))))

(define (too-sweet? tastes)
  (if (<= (length tastes) 2)
      #f
      (or (and (equal? "sweet" (list-ref tastes 0))
               (equal? "sweet" (list-ref tastes 1)))
          (too-sweet? (cdr tastes)))))

(define (abc364a)
  (let* ((n (string->number (read-line (current-input-port))))
         (tastes (read-tastes n)))
    (if (not (too-sweet? tastes))
        (print "Yes")
        (print "No"))))

(define (read-squares n)
  (if (<= n 0)
      '()
      (let ((line (read-line (current-input-port))))
        (cons line (read-squares (- n 1))))))

(define (forward-to height width y x squares directions)
  (define directions-len (string-length directions))
  (define (occupied? y x)
    (equal? #\# (string-ref (vector-ref squares (- y 1)) (- x 1))))
  (define (move-vertically next)
    (clamp next 1 height))
  (define (move-horizontally next)
    (clamp next 1 width))
  (define (go ret y x index)
    (if (>= index directions-len)
        ret
        (let* ((direction (string-ref directions index))
               (next-y (cond ((equal? #\U direction) (move-vertically (- y 1)))
                             ((equal? #\D direction) (move-vertically (+ y 1)))
                             (else y)))
               (next-x (cond ((equal? #\L direction) (move-horizontally (- x 1)))
                             ((equal? #\R direction) (move-horizontally (+ x 1)))
                             (else x))))
          (if (occupied? next-y next-x)
              (go ret y x (+ index 1))
              (go (list next-y next-x) next-y next-x (+ index 1))))))
  (go (list y x) y x 0))

(define (abc364b)
  (let* ((dimension (map string->number
                         (string-split (read-line (current-input-port))
                                       " ")))
         (start (map string->number
                     (string-split (read-line (current-input-port))
                                   " ")))
         (squares (read-squares (list-ref dimension 0)))
         (directions (read-line (current-input-port))))
    (apply print (intersperse #\space
                              (forward-to (list-ref dimension 0)
                                          (list-ref dimension 1)
                                          (list-ref start 0)
                                          (list-ref start 1)
                                          (list->vector squares)
                                          directions)))))