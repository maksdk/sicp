#lang racket/base

(require rackunit)

;; BEGIN (write your solution here)
(define (sum-of-squares-of-top-two x y z) 
   (cond ((and (>= x z) (>= y z)) (+ (* x x) (* y y)))
      ( (and (>= x y) (>= z y)) (+ (* x x) (* z z)))
      (else (+ (* y y) (* z z)))
   ))
;; END

(check-equal? (sum-of-squares-of-top-two 1 2 3) 13)
(check-equal? (sum-of-squares-of-top-two 3 4 2) 25)
(check-equal? (sum-of-squares-of-top-two 5 3 4) 41)