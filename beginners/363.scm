(define-module beginners.363
  (export abc363a
          abc363b))
(select-module beginners.363)

(define (next-caret rate)
  (cond ((< rate 100) (- 100 rate))
        ((< rate 200) (- 200 rate))
        ((< rate 300) (- 300 rate))
        (else (- 400 rate))))

(define (abc363a)
  (let ((rate (string->number (read-line (current-input-port)))))
    (print (next-caret rate))))

(define (take-while pred sequence)
  (if (null? sequence)
      '()
      (let ((item (car sequence)))
        (if (pred item)
            (cons item (take-while pred (cdr sequence)))
            '()))))

(define (drop-while pred sequence)
  (if (null? sequence)
      '()
      (let ((item (car sequence)))
        (if (pred item)
            (drop-while pred (cdr sequence))
            sequence))))

(define (exceeds-after len count dolls)
  (define (go ret len count dolls)
    (if (or (null? dolls) (<= count 0))
        ret
        (go (max ret (- len (car dolls)))
            len
            (- count 1)
            (cdr dolls))))
  (let ((exceeded (take-while (lambda (doll) (>= doll len)) dolls))
        (remained (drop-while (lambda (doll) (>= doll len)) dolls)))
    (go 0 len (- count (length exceeded)) remained)))

(define (abc363b)
  (let* ((preconditions (map string->number
                             (string-split (read-line (current-input-port))
                                           " ")))
         (dolls (map string->number
                     (string-split (read-line (current-input-port))
                                   " "))))
    (print (exceeds-after (list-ref preconditions 1)
                          (list-ref preconditions 2)
                          (sort dolls >)))))