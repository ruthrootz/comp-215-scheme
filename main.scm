(define (append1 list1 list2)
    (if (null? list1) list2 ;; return list2 if list1 is empty
        (if (null? list2) list1 ;; return list1 if list2 is empty
            ;; if the lists aren't empty, create a new list by calling append1 recursively
            (cons (car list1) (append1 (cdr list1) list2)))))

(define (member? element listToSearch)
    (if (null? listToSearch) #f
        (if (equal? element (car listToSearch)) #t
            (member? element (cdr listToSearch)))))

(define (member1 element listToSearch)
    (if (null? listToSearch) #f
        (if (equal? element (car listToSearch)) listToSearch
            (member1 element (cdr listToSearch)))))

(define (flatten listToFlatten)
    (if (null? listToFlatten) listToFlatten
        (if (> (length listToFlatten) 0)
            (flatten (cdr listToFlatten))
            ())
    ;; look at first element, check if it's a list
        ;; if it's a list...
        ;; otherwise...

;; (define (zip list1 list2))

;; (append1 '(1 2 3 4) '(a b c d e))
;; (member? 'a '(a 1 2 3 b))
;; (member1 'a '(1 2 3 a b c))
(flatten '(a b c (1 2 3) car ((4 5 6) (d e f))))
