(define-module beginners.310
  (export abc310))
(select-module beginners.310)

; 以下の点に注意が必要
; * ドリンクは割引券を使う(追加注文を行う)場合、確定的に提供される。
; * 問題文中の Q は割引券の額面の数値ではなく割引後の数値。
(define (compute-minimum-cost nominal-cost discounted additions)
  (let ((minimum-addition (reduce min 1 additions)))
    (min nominal-cost (+ discounted minimum-addition))))

(define (abc310)
  (let* ((preconditions (map string->number
                             (string-split (read-line (current-input-port))
                                           " ")))
         (line (map string->number
                    (string-split (read-line (current-input-port))
                                  " "))))
    (print (compute-minimum-cost (list-ref preconditions 1)
                                 (list-ref preconditions 2)
                                 line))))