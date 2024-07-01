(define-module beginners.360
  (export abc360a))
(select-module beginners.360)

(define (rice-before-miso? menu)
  (let ((rice-pos (string-scan menu "R"))
        (miso-pos (string-scan menu "M")))
    (< rice-pos miso-pos)))

(define (abc360a)
  (let ((line (read-line (current-input-port))))
    (if (rice-before-miso? line)
        (print "Yes")
        (print "No"))))