;Exercise 1.8. Newton’s method for cube roots is based on the fact that if y is an approximation to the
;cube root of x, then a better approximation is given by the value
;Use this formula to implement a cube-root procedure analogous to the square-root procedure. (In
;section 1.3.4 we will see how to implement Newton’s method in general as an abstraction of these
;square-root and cube-root procedures.)

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.1))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

;test
(sqrt-iter 1 144)
