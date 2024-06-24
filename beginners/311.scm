(define-module beginners.311
  (export abc311))
(select-module beginners.311)

(define (find-completed-position line)
  (define len (string-length line))
  (define (go line index find-a? find-b? find-c?)
    (if (and find-a? find-b? find-c?)
        index
        (cond ((equal? #\A (string-ref line index)) (go line (+ index 1) #t find-b? find-c?))
              ((equal? #\B (string-ref line index)) (go line (+ index 1) find-a? #t find-c?))
              ((equal? #\C (string-ref line index)) (go line (+ index 1) find-a? find-b? #t))
              (else (go line (+ index 1) find-a? find-b? find-c?)))))
  (go line 0 #f #f #f))

(define (abc311)
  (let* ((n (string->number (read-line (current-input-port))))
         (line (read-line (current-input-port))))
    (print (find-completed-position line))))