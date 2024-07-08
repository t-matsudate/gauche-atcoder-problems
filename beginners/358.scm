(define-module beginners.358
  (export abc358a
          abc358b))
(select-module beginners.358)

(define (atcoder-land? line)
  (equal? "AtCoder Land" line))

(define (abc358a)
  (let ((line (read-line (current-input-port))))
    (if (atcoder-land? line)
        (print "Yes")
        (print "No"))))

(define (compute-completion-times latency total clients)
  (if (null? clients)
      '()
      (let ((completion-time (+ latency (max total (car clients)))))
        (cons completion-time
              (compute-completion-times latency completion-time (cdr clients))))))

(define (abc358b)
  (let* ((preconditions (map string->number
                             (string-split (read-line (current-input-port))
                                           " ")))
         (line (map string->number
                    (string-split (read-line (current-input-port))
                                  " "))))
    (apply print
           (intersperse #\newline
                        (compute-completion-times (list-ref preconditions 1) 0 line)))))