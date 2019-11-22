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

(if (> 3 2) (displayln "yes") (displayln "no")) ; "yes"

(define (sentence-type str) 
   (
      let ([upperStr (string-upcase str)])
      (if (= str upperStr) "cry" "common")
   )
)

(define (sentence-type str)
   (let ([upS (string-upcase str)])
      (if (equal? str upS) "cry" "common")
   )
)

(define (sentence-type text) (if (equal? (string-upcase text) text)
                               "cry"
                               "common"))


; when unless 

(when (positive? -5)
  (display "hi"))

(when (positive? 5)
  (display "hi")
  (display " there"))


(unless (positive? 5)
  (display "hi"))

(unless (positive? -5)
  (display "hi")
  (display " there"))

; return simple value 
  (define (say-boom str) 
    (when (equal? str "go") "Boom!"))
    
(displayln (say-boom "go"))

; switsch
(define (humanize-permission symb) 
   (case symb
      [ ("x") "execute" ]
      [ ("r") "read"    ]
      [ ("w") "write"   ]
      [ else #f ]))
      
(displayln (humanize-permission "x" ))