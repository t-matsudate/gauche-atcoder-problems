(define-module abc347a
  (export abc347a))
(select-module abc347a)

(define (map-by-divisible k numbers)
  (if (null? numbers)
      '()
      (let ((item (car numbers)))
        (if (zero? (remainder item k))
            (cons (quotient item k) (map-by-divisible k (cdr numbers)))
            (map-by-divisible k (cdr numbers))))))

; NOTE:  いくつかのケースで実行時エラーが発生する。 5/27 時点で原因は不明。
;        ここで、提出時の実行時間と使用メモリ量それぞれの平均は以下の通り。
;        実行時間: 11ms
;        使用メモリ量: 12MB
(define (abc347a)
  (let ((n+k (map string->number
                  (string-split (read-line (current-input-port))
                                " ")))
        (numbers (map string->number
                      (string-split (read-line (current-input-port))
                                    " "))))
    (print (list->string (intersperse #\space (map integer->digit (map-by-divisible (list-ref n+k 1) numbers)))))))