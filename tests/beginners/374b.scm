(add-load-path "../../" :relative)
(require "beginners/374")
(select-module beginners.374)
(use gauche.test)

(test-start "ABC374B")
(test* "(abcde, abedc)" 3 (find-diff "abcde" "abedc"))
(test* "(abcde, abcdefg)" 6 (find-diff "abcde" "abcdefg"))
(test* "(keyence, keyence)" 0 (find-diff "keyence" "keyence"))
(test* "(a, b)" 1 (find-diff "a" "b"))
(test* "(a{1,100}, a{1,99}b)" 100 (find-diff (make-string 100 #\a) (string-append (make-string 99 #\a) "b")))
(test-end)
