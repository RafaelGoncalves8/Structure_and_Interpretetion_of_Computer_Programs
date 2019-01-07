;Exercise 1.12 Pascal's triangle.
;     | n
;line | 1 2 3 4 5
;----------------
;   1 | 1
;   2 | 1 1
;   3 | 1 2 1
;   4 | 1 3 3 1
;   5 | 1 4 6 4 1
; ... | ...

(define (pascal line n)
  (cond ((= line 1) 1)
        ((= n 1) 1)
        ((= n line) 1)
        (else (+
                (pascal (- line 1) (- n 1))
                (pascal (- line 1) n)))))
