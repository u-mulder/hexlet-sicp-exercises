;; Hexlet SICP, exercise 1
(define (sum-of-squares a b) (+ (* a a) (* b b)))

(define (sum-of-squares-of-top-two a b c)
  (cond 
     ((and (not (> a b)) (not (> a c))) (sum-of-squares b c))
     ((and (not (> b a)) (not (> b c))) (sum-of-squares a c))
     ((and (not (> c a)) (not (> c b))) (sum-of-squares a b))
  )
)
;;-----------------------------------------------------------

;; Hexlet SICP, exercise 2, Akkerman function
(define (A x y)
  (cond
    ((= y 0) 0)
    ((= x 0) (* 2 y))
    ((= y 1) 2)
    (else (A (- x 1) (A x (- y 1))))
  )
)
;;-----------------------------------------------------------

;; Hexlet SICP, exercise 4
;; double function
(define (double f)
  (lambda (x) (f (f x)))
)

;; repeated function
(define (repeated f times)
  (lambda (x)
    (define (run-f f aggr times-left)
      (cond
        ((= 1 times-left) (f aggr))
        (else (run-f f (f aggr) (- times-left 1)))
      )
    )
    (run-f f x times)
  )
)
;;-----------------------------------------------------------
