(define (append1 list1 list2)
  (if (null? list1) list2
      (if (null? list2) list1
          (cons list1 (append1 (car list2) (cdr list2)))))

;; (display (append1 ’(1 2 3 4) ’(a b c d e f)))
(display 'a)
