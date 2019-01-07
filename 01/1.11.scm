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
  (define (f-iter val counter)
    (if (< val 3)
        val
        (f-iter (- val 1) 

  (f-iter 0 0))

