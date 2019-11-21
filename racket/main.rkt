#lang racket

(displayln "Hello, World!")

(define (square-of-sum x y)
   (let ([sum (lambda (n1 n2) (+ n1 n2))])
      (* (sum x y) (sum x y))
   )
)
        
(displayln (square-of-sum 2 2))

(define (same-parity? x y) 
   (or (and (odd? x) (odd? y)) 
      (and (even? x) (even? y))))

(define (gt? x y) (> x y))
(displayln (gt? 2 2)) ;false
(displayln (gt? 4 2)) ;true

(displayln (even? 3)) ;false
(displayln (even? 4)) ;true

(displayln (odd? 3)) ;true
(displayln (odd? 4)) ;false