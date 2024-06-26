(define-module beginners.309
  (export abc309))
(select-module beginners.309)

(define (neighbor? a b)
  (if (or (and (= a 3) (= b 4))
          (and (= a 6) (= b 7)))
      #f
      (= 1 (- b a))))

(define (abc309)
  (let ((line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (if (neighbor? (list-ref line 0) (list-ref line 1))
        (print "Yes")
        (print "No"))))