(define (pascal-triangle row col)
    (cond ((> col row) 0)
        ((< col 0) 0)
        ((= col 1) 1)
        (else (+ (pascal-triangle (- row 1) (- col 1))
            (pascal-triangle (- row 1) col)))
    )
)

(define (f n)
    (cond ((< n 3) n)  
        ((>= n 3) (+ (f (- n 1)) 
                    (* 2 (f (- n 2)))
                    (* 3 (f (- n 3)))
                )         
        )
    )
)