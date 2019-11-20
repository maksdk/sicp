
; examples with practice 


(define (square x) (* x x))

(define (sum-of-square x y)
   (+ (square x) (square y)))
    
(define result (sum-of-square 3 4))

(displayln result) ;25


(define (func a)
   (sum-of-square (+ a 1) (* a 2) ))

(define result2 (func 5)) 

(displayln result2); 136