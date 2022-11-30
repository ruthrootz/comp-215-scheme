(define (append1 list1 list2)
    (if (null? list1) list2 ;; return list2 if list1 is empty
        (if (null? list2) list1 ;; return list1 if list2 is empty
            ;; if the lists aren't empty, create a new list by calling append1 recursively
            (cons (car list1) (append1 (cdr list1) list2)))))

(define (member? element listToSearch)
    (if (null? listToSearch) #f
        (if (equal? element (car listToSearch)) #t
            (member? element (cdr listToSearch)))))

;; (append1 '(1 2 3 4) '(a b c d e))
;; (member? 'a '(a 1 2 3 b))
