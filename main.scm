; Name: Ruth Oldja
; Date: 12/1/2022
; purpose: functions for baic opperations on lists

(define (append1 list1 list2)
    (if (null? list1) list2 ; return list2 if list1 is empty
        (if (null? list2) list1 ; return list1 if list2 is empty
        ; if the lists aren't empty, create a new list by calling append1 recursively
        (cons (car list1) (append1 (cdr list1) list2)))))

(define (member? element listToSearch)
    (if (null? listToSearch) #f
        (if (equal? element (car listToSearch)) #t
        (member? element (cdr listToSearch)))))

(define (member1 element listToSearch)
    (if (null? listToSearch) #f ; list is empty, and the element wasn't found
        (if (equal? element (car listToSearch)) listToSearch
        (member1 element (cdr listToSearch))))) ; element was found, return the rest of the list

(define (flatten listToFlatten)
    (if (null? listToFlatten) '()
        ; if the head element is a list...
        (if (list? (car listToFlatten))
            (append1 (flatten (car listToFlatten)) (flatten (cdr listToFlatten)))
        ; else if the head element is not a list...
        (cons (car listToFlatten) (flatten (cdr listToFlatten))))))



(define (zip list1 list2)
    (cond
        [(null? list1) '()]
        [(null? list2) '()]
        [else
             (cons (list (car list1) (car list2)) (zip (cdr list1) (cdr list2)))]))

; TESTS
; (append1 '(1 2 3 4) '(a b c d e f g))
; (member? 'a '(a 1 2 3 b))
; (member1 'a '(1 2 3 a b c))
; (flatten '(a b c (1 2 3) bat ((4 5 6) (d e f))))
; (zip '(1 2 3) '(a b c))
