(define-module beginners.348
  (export abc348))
(select-module beginners.348)

(define (penalty-kick count)
  (define (go ret count)
    (if (<= count 0)
        ret
        (let ((result (if (zero? (remainder count 3)) #\x #\o)))
          (go (cons result ret) (- count 1)))))
  (go '() count))

(define (abc348)
  (let ((count (string->number (read-line (current-input-port)))))
    (print (list->string (penalty-kick count)))))