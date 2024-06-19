(define-module abc321a
  (export abc321a))
(select-module abc321a)

(define (decreased? line)
  (define len (string-length line))
  (define (go index line)
    (if (>= (+ index 1) len)
        #t
        (let ((current (digit->integer (string-ref line index)))
              (next (digit->integer (string-ref line (+ index 1)))))
          (and (> current next)
               (go (+ index 1) line)))))
  (go 0 line))

(define (abc321a)
  (let ((line (read-line (current-input-port))))
    (if (decreased? line)
        (print "Yes")
        (print "No"))))