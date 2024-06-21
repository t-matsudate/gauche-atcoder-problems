(define-module beginners.332
  (export abc332))
(select-module beginners.332)

(define (read-subtotals n)
  (if (<= n 0)
      '()
      (let (; '(単価 数量)
            (line (map string->number
                       (string-split (read-line (current-input-port))
                                     " "))))
        (cons (* (list-ref line 0) (list-ref line 1)) (read-subtotals (- n 1))))))

(define (abc332)
  (let* (; '(入力の行数 送料付加の基準額 送料)
         (preconditions (map string->number
                             (string-split (read-line (current-input-port))
                                           " ")))
         (subtotals (read-subtotals (list-ref preconditions 0)))
         (total (reduce + 0 subtotals)))
    (if (>= total (list-ref preconditions 1))
        (print total)
        (print (+ total (list-ref preconditions 2))))))