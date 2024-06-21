(define-module beginners.344
  (export abc344))
(select-module beginners.344)

(define (split-vertical line)
  (let ((first (string-scan line "|"))
        (second (string-scan-right line "|")))
    (and first
         second
         (string-append (substring line 0 first)
                        (substring line
                                   (+ second 1)
                                   (string-length line))))))

(define (abc344)
  (let ((line (read-line (current-input-port))))
    (print (split-vertical line))))