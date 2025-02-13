; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and  ( =  in3 0)  ( =  in6 0)))
(pop)

; Generated constraints (B):
(push)
(assert (or (< in1 100) (> in1 -100)))
(assert (or (< in2 100) (> in2 -100)))
(assert (= in3 0))
(assert (or (< in4 100) (> in4 -100)))
(assert (or (< in5 100) (> in5 -100)))
(assert (= in6 0))
(assert (or (< in7 100) (> in7 -100)))
(assert (or (< in8 100) (> in8 -100)))
(assert (= in9 0))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and  ( =  in3 0)  ( =  in6 0)))
(assert (not
(and (or (< in1 100) (> in1 -100)) (or (< in2 100) (> in2 -100)) (= in3 0) (or (< in4 100) (> in4 -100)) (or (< in5 100) (> in5 -100)) (= in6 0) (or (< in7 100) (> in7 -100)) (or (< in8 100) (> in8 -100)) (= in9 0))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (or (< in1 100) (> in1 -100)))
(assert (or (< in2 100) (> in2 -100)))
(assert (= in3 0))
(assert (or (< in4 100) (> in4 -100)))
(assert (or (< in5 100) (> in5 -100)))
(assert (= in6 0))
(assert (or (< in7 100) (> in7 -100)))
(assert (or (< in8 100) (> in8 -100)))
(assert (= in9 0))
(assert (not
(and (and  ( =  in3 0)  ( =  in6 0)))
))
(check-sat)
(pop)
