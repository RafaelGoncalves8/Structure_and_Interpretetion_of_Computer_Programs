;Exercise 1.11 Design f defined by:
; f(n) = n, if n < 3
; f(n) = f(n - 1) + 2*f(n - 2) + 3*f(n - 3), if n >= 3

;recursive
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

;iterative
(define (g n)
  (define (f-iter acc counter)
    (if (< counter 3)
        counter
        (+ (f-iter (+ acc (- counter 1)) (- counter 1))
           (* 2 (f-iter (+ acc (- counter 2)) (- counter 2)))
           (* 3 (f-iter (+ acc (- counter 3)) (- counter 3))))))
  (f-iter 0 n))
