(define-module abc327a
  (export abc327a))
(select-module abc327a)

(define (a->b? n line)
  (and (equal? #\a (string-ref line n))
       (equal? #\b (string-ref line (+ n 1)))))

(define (b->a? n line)
  (and (equal? #\b (string-ref line n))
       (equal? #\a (string-ref line (+ n 1)))))

(define (neighbor-a-and-b? line)
  (define last (- (string-length line) 1))
  (define (go n line)
    (if (>= n last)
        #f
        (or (a->b? n line)
            (b->a? n line)
            (go (+ n 1) line))))
  (go 0 line))

(define (abc327a)
  (let* ((n (string->number (read-line (current-input-port))))
         (line (read-line (current-input-port))))
    (if (neighbor-a-and-b? line)
        (print "Yes")
        (print "No"))))