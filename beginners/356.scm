(define-module beginners.356
  (export abc356a
          abc356b))
(select-module beginners.356)

(define (reverse-partial-sequence n l r)
  (let ((reversed (lrange r (- l 1) -1))
        (before (lrange 1 l))
        (after (lrange (+ r 1) (+ n 1))))
    (append before reversed after)))

(define (abc356a)
  (let ((line (map string->number
                   (string-split (read-line (current-input-port))
                                 " "))))
    (apply print
           (intersperse #\space
                        (reverse-partial-sequence (list-ref line 0)
                                                  (list-ref line 1)
                                                  (list-ref line 2))))))

(define (read-foods n)
  (if (<= n 0)
      '()
      (let ((food (map string->number
                       (string-split (read-line (current-input-port))
                                     " "))))
        (cons food (read-foods (- n 1))))))

(define (satisfies-nutrients? nutrients foods)
  (let ((totals (reduce (lambda (total food) (map + total food))
                        (make-list (length nutrients) 0)
                        foods)))
    (every (lambda (total nutrient) (>= total nutrient)) totals nutrients)))

(define (abc356b)
  (let* ((preconditions (map string->number
                             (string-split (read-line (current-input-port))
                                           " ")))
         (nutrients (map string->number
                         (string-split (read-line (current-input-port))
                                       " ")))
         (foods (read-foods (list-ref preconditions 0))))
    (if (satisfies-nutrients? nutrients foods)
        (print "Yes")
        (print "No"))))