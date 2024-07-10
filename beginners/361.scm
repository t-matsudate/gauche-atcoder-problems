(define-module beginners.361
  (export abc361a
          abc361b))
(select-module beginners.361)

(define (insert-number numbers index number)
  (append (take numbers index)
          (list number)
          (drop numbers index)))

(define (abc361a)
  (let* ((preconditions (map string->number
                             (string-split (read-line (current-input-port))
                                           " ")))
         (numbers (map string->number
                       (string-split (read-line (current-input-port))
                                     " "))))
    (apply print
           (intersperse #\space
                        (insert-number numbers
                                       (list-ref preconditions 1)
                                       (list-ref preconditions 2))))))

(define (intersected-cubic? c1 c2)
  (define (intersects? p1 p2 p3 p4)
    (and (> p2 p3)
         (> p4 p1)))
  (let* ((c1-start (take c1 3))
         (c1-end (drop c1 3))
         (c2-start (take c2 3))
         (c2-end (drop c2 3)))
    (and ; (x1, x2, x3, x4)
         (intersects? (list-ref c1-start 0) (list-ref c1-end 0) (list-ref c2-start 0) (list-ref c2-end 0))
         ; (y1, y2, y3, y4)
         (intersects? (list-ref c1-start 1) (list-ref c1-end 1) (list-ref c2-start 1) (list-ref c2-end 1))
         ; (z1, z2, z3, z4)
         (intersects? (list-ref c1-start 2) (list-ref c1-end 2) (list-ref c2-start 2) (list-ref c2-end 2)))))

(define (abc361b)
  (let* ((c1 (map string->number
                  (string-split (read-line (current-input-port))
                                " ")))
         (c2 (map string->number
                  (string-split (read-line (current-input-port))
                                " "))))
    (if (intersected-cubic? c1 c2)
        (print "Yes")
        (print "No"))))