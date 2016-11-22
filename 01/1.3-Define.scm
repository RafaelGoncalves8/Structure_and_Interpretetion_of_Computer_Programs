;Exercise 1.3.  Define a procedure that takes three numbers as arguments and
;returns the sum of the squares of the two larger numbers. 

(define (gt a b) (if (> a b) a b))
(define (lt a b) (if (< a b) a b))

(define (sqr a) (* a a))

(define (square-sum-of-larger-numbers a b c)
  (+ (sqr (gt a (gt b c)))
     (sqr (lt a (gt b c)))))

;test
(square-sum-of-larger-numbers 1 2 3)
