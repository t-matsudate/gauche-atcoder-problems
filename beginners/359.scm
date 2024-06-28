(define-module beginners.359
  (export abc359a
          abc359b))
(select-module beginners.359)

(define (read-names n)
  (if (< n 1)
      '()
      (let ((name (read-line (current-input-port))))
        (cons name (read-names (- n 1))))))

(define (count-takahashi names)
  (length (filter (lambda (name) (equal? "Takahashi" name)) names)))

(define (abc359a)
  (let* ((n (string->number (read-line (current-input-port))))
         (names (read-names n)))
    (print (count-takahashi names))))

(define (count-stepped-colors colors)
  (define len (length colors))
  (define (go index colors)
    (if (>= (+ index 2) len)
        0
        (if (= (list-ref colors index)
               (list-ref colors (+ index 2)))
            (+ 1 (go (+ index 1) colors))
            (go (+ index 1) colors))))
  (go 0 colors))

(define (abc359b)
  (let* ((n (string->number (read-line (current-input-port))))
         (colors (map string->number
                      (string-split (read-line (current-input-port))
                                    " "))))
    (print (count-stepped-colors colors))))