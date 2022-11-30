(define (append1 list1 list2)
  (if (null? list1) list2
      (if (null? list2) list1
          (else (list1))))

(append1 ’(1 2 3 4) ’(a b c d e f))



(define (double x)
        (* 2 x))
(double 4)
