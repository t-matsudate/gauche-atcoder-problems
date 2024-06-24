(define-module beginners.313
  (export abc313))
(select-module beginners.313)

(define (subtract-from-highest target rest)
  (let ((highest (reduce max 0 rest)))
    (if (> target highest)
        0
        (+ (- highest target) 1))))

(define (abc313)
  (let* ((n (string->number (read-line (current-input-port))))
         (people (map string->number
                      (string-split (read-line (current-input-port))
                                    " "))))
    (print (subtract-from-highest (car people) (cdr people)))))