(define-module beginners.354
  (export abc354a
          abc354b))
(select-module beginners.354)

(define (exceeds-after height)
  (integer-length (+ 1 height)))

(define (abc354a)
  (let ((height (string->number (read-line (current-input-port)))))
    (print (exceeds-after height))))

(define (read-users n)
  (if (<= n 0)
      '()
      (let ((user (string-split (read-line (current-input-port)) " ")))
        ; '(ユーザ名 レート(整数))
        (cons (cons (list-ref user 0) (string->number (list-ref user 1)))
              (read-users (- n 1))))))

(define (mod-matches users)
  (let ((total-rate (reduce + 0 (map cdr users))))
    (list-ref users (remainder total-rate (length users)))))

(define (order-by-dictionary user-a user-b)
  (string<? (car user-a) (car user-b)))

(define (abc354b)
  (let* ((n (string->number (read-line (current-input-port))))
         (users (read-users n)))
    (print (car (mod-matches (sort users order-by-dictionary))))))