(define-module beginners.338
  (export abc338))
(select-module beginners.338)

(define (capitalized? line)
  (and (char-upper-case? (string-ref line 0))
       (every char-lower-case? (string->list (substring line 1 (string-length line))))))

(define (abc338)
  (let ((line (read-line (current-input-port))))
    (if (capitalized? line)
        (print "Yes")
        (print "No"))))