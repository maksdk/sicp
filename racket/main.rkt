#lang racket

(displayln "Hello, World!")

(define (square-of-sum x y)
   (let ([sum (lambda (n1 n2) (+ n1 n2))])
      (* (sum x y) (sum x y))
   )
)
        
(displayln (square-of-sum 2 2))