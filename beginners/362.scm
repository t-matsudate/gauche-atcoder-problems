(define-module beginners.362
  (export abc362a
          abc362b))
(select-module beginners.362)

(define (minimum-except-one rgb except)
  (cond ((equal? "Red" except) (min (list-ref rgb 1) (list-ref rgb 2)))
        ((equal? "Green" except) (min (list-ref rgb 0) (list-ref rgb 2)))
        ((equal? "Blue" except) (min (list-ref rgb 0) (list-ref rgb 1)))))

(define (abc362a)
  (let* ((rgb (map string->number
                   (string-split (read-line (current-input-port))
                                 " ")))
         (except (read-line (current-input-port))))
    (print (minimum-except-one rgb except))))

(define (compute-length p1 p2)
  (+ (square (- (list-ref p2 0) (list-ref p1 0)))
     (square (- (list-ref p2 1) (list-ref p1 1)))))

(define (right-angle? p1 p2 p3)
  (let ((a (compute-length p1 p2))
        (b (compute-length p2 p3))
        (c (compute-length p3 p1)))
    (or (= a (+ b c))
        (= b (+ a c))
        (= c (+ a b)))))

(define (abc362b)
  (let* ((p1 (map string->number
                  (string-split (read-line (current-input-port))
                                " ")))
         (p2 (map string->number
                  (string-split (read-line (current-input-port))
                                " ")))
         (p3 (map string->number
                  (string-split (read-line (current-input-port))
                                " "))))
    (if (right-angle? p1 p2 p3)
        (print "Yes")
        (print "No"))))