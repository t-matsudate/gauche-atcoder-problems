(define-module abc348a
  (export abc348a))
(select-module abc348a)

(define (penalty-kick count)
  (define (go ret count)
    (if (<= count 0)
        ret
        (let ((result (if (zero? (remainder count 3)) #\x #\o)))
          (go (cons result ret) (- count 1)))))
  (go '() count))

(define (abc348a)
  (let ((count (string->number (read-line (current-input-port)))))
    (print (list->string (penalty-kick count)))))