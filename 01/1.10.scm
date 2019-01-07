;Exercise 1.10 Ackermann's function

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;(A 1 10)
;Ans:
;(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 1))))))))))
;2^10 = 1024

;(A 2 4)
;Ans:
;(A 1 (A 2 3))
;(A 1 (A 1 (A 2 2)))
;(A 1 (A 1 (A 1 (A 2 1))))
;(A 1 (A 1 2^2))
;(A 1 2^2^2)
;2^2^2^2 = 65536

;(A 3 3)
;(A 2 (A 3 2))
;(A 2 (A 2 (A 3 1)))
;(A 2 (A 2 2))
;(A 2 4)
;2^2^2^2 = 65536

;(f n) = (A 0 n) = 2*n
;(g n) = (A 1 n) = 2^n
;(h n) = (A 2 n) = 2^(2^(2^...)) n exponentiations
