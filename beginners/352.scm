(define-module beginners.352
  (export abc352))
(select-module beginners.352)

(define (transit? station-x station-y station-z)
  (<= (min station-x station-y) station-z (max station-x station-y)))

(define (abc352)
  (let* ((line (map string->number
                    (string-split (read-line (current-input-port))
                                  " ")))
         (station-x (list-ref line 1))
         (station-y (list-ref line 2))
         (station-z (list-ref line 3)))
    (if (transit? station-x station-y station-z)
        (print "Yes")
        (print "No"))))