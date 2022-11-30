(define (append1 list1 list2)
  (if (null? list1) list2
      (if (null? list2) list1
          (cons list1 (car list2)))))

(define (double x)
        (* 2 x))



(double 4)
(append1 '(1 2 3) '(a b c))
;; (append1 ’(1 2 3 4) ’(a b c d e f))
