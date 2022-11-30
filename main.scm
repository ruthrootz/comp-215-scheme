(define (append1 list1 list2)
  (if (null? list1) list2
      (if (null? list2) list1
          (cons (car list1) (append1 (cdr list1) list2)))))

(append1 '(1 2 3 4) '(a b c d e))
