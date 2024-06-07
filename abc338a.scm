(define-module abc338a
  (export abc338a))
(select-module abc338a)

(define (capitalized? line)
  (and (char-upper-case? (string-ref line 0))
       (every char-lower-case? (string->list (substring line 1 (string-length line))))))

(define (abc338a)
  (let ((line (read-line (current-input-port))))
    (if (capitalized? line)
        (print "Yes")
        (print "No"))))