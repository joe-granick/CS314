#lang scheme

;QUESTION 1
;Q1.1
(cons 'b
(cons 'g (cons
 (cons 'e (cons 'f
      (cons
       (cons 'b '()) '()))) '())))

;Q1.2
(define L
  (cons
       2 (cons
          * (cons
               'd '()))
   )
  )
((car (cdr L)) (car L) 3)

      
;QUESTION 2
;Q2.1
(define rev
  (lambda (l)
   (if (equal? l '()) l
       (append (rev (cdr l)) (cons (car l) '())))))
(define M (cons 1 (cons 2 (cons 3 '()))))
M
(rev M)

;Q2.2
(define reduce
  (lambda( op l i)
    (if (null? l) i
        (op (car l) (reduce op (cdr l) i)))))
(define max
  (lambda (a b)
    (if(> a b) a b)))

(define maxx
  (lambda (l)
  (reduce max l 0)))
(maxx M)



