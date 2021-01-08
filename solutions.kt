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
