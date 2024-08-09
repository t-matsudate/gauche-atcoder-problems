(define-module beginners.350
  (export abc350a
          abc350b))
(select-module beginners.350)
(use srfi.178)

(define (past? contest)
  (let ((n (string->number (substring contest 3 (string-length contest)))))
    (and (> 350 n 0) (not (= 316 n)))))

(define (abc350a)
  (let ((contest (read-line (current-input-port))))
    (if (past? contest)
        (print "Yes")
        (print "No"))))

(define (count-developed-teeth before-total curing-teeth)
  (define teeth (make-bitvector before-total #t))
  (define (go curing-teeth)
    (if (null? curing-teeth)
        (bitvector-count #t teeth)
        (let* ((curing-tooth (- (car curing-teeth) 1))
               (current-tooth (bitvector-ref/bool teeth curing-tooth)))
          (bitvector-set! teeth curing-tooth (not current-tooth))
          (go (cdr curing-teeth)))))
  (go curing-teeth))

(define (abc350b)
  (let* ((preconditions (map string->number
                             (string-split (read-line (current-input-port))
                                           " ")))
         (curing-teeth (map string->number
                            (string-split (read-line (current-input-port))
                                          " "))))
    (print (count-developed-teeth (list-ref preconditions 0) curing-teeth))))