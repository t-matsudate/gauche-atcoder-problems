(define-module beginners.353
  (export abc353a
          abc353b))
(select-module beginners.353)

(define (find-higher buildings)
  (define (go ret first buildings)
    (if (null? buildings)
        -1
        (if (< first (car buildings))
            ret
            (go (+ ret 1) first (cdr buildings)))))
  (go 2 (car buildings) (cdr buildings)))

(define (abc353a)
  (let ((n (string->number (read-line (current-input-port))))
        (buildings (map string->number
                        (string-split (read-line (current-input-port))
                                      " "))))
    (print (find-higher buildings))))

(define (count-cycle capacity groups)
  (define (go ret current groups)
    (if (null? groups)
        ; 剰余が発生する時は (< (+ current group) capacity) が真である状態でループを終える時と等しい。
        (+ ret (if (positive? current) 1 0))
        (let ((group (car groups))
              (rest (cdr groups)))
          (cond ((< (+ current group) capacity) (go ret (+ current group) rest))
                ((= (+ current group) capacity) (go (+ ret 1) 0 rest))
                ((> (+ current group) capacity) (go (+ ret 1) 0 groups))))))
  (go 0 0 groups))

(define (abc353b)
  (let* ((preconditions (map string->number
                             (string-split (read-line (current-input-port))
                                           " ")))
         (groups (map string->number
                      (string-split (read-line (current-input-port))
                                    " "))))
    (print (count-cycle (list-ref preconditions 1) groups))))