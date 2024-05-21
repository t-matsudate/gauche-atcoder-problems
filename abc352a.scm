(define-module abc352a
  (export abc352a))
(select-module abc352a)

(define (transit? station-x station-y station-z)
  (<= (min station-x station-y) station-z (max station-x station-y)))

(define (abc352a)
  (let* ((line (map string->number
                    (string-split (read-line (current-input-port))
                                  " ")))
         (station-x (list-ref line 1))
         (station-y (list-ref line 2))
         (station-z (list-ref line 3)))
    (if (transit? station-x station-y station-z)
        (print "Yes")
        (print "No"))))