; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100))  ( <  in4 100))  ( <  in5 100))  ( <  in6 100))  ( <  in7 100))  ( <  in8 100)))
(pop)

; Generated constraints (B):
(push)
(assert (<= 0 100))
(assert (>= 0 0))
(assert (<= 1 100))
(assert (>= 1 0))
(assert (<= 2 100))
(assert (>= 2 0))
(assert (<= 3 100))
(assert (>= 3 0))
(assert (<= 4 100))
(assert (>= 4 0))
(assert (<= 5 100))
(assert (>= 5 0))
(assert (<= 6 100))
(assert (>= 6 0))
(assert (<= 7 100))
(assert (>= 7 0))
(assert (<= 8 100))
(assert (>= 8 0))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100))  ( <  in4 100))  ( <  in5 100))  ( <  in6 100))  ( <  in7 100))  ( <  in8 100)))
(assert (not
(and (<= 0 100) (>= 0 0) (<= 1 100) (>= 1 0) (<= 2 100) (>= 2 0) (<= 3 100) (>= 3 0) (<= 4 100) (>= 4 0) (<= 5 100) (>= 5 0) (<= 6 100) (>= 6 0) (<= 7 100) (>= 7 0) (<= 8 100) (>= 8 0))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (<= 0 100))
(assert (>= 0 0))
(assert (<= 1 100))
(assert (>= 1 0))
(assert (<= 2 100))
(assert (>= 2 0))
(assert (<= 3 100))
(assert (>= 3 0))
(assert (<= 4 100))
(assert (>= 4 0))
(assert (<= 5 100))
(assert (>= 5 0))
(assert (<= 6 100))
(assert (>= 6 0))
(assert (<= 7 100))
(assert (>= 7 0))
(assert (<= 8 100))
(assert (>= 8 0))
(assert (not
(and (and (and (and (and (and (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100))  ( <  in4 100))  ( <  in5 100))  ( <  in6 100))  ( <  in7 100))  ( <  in8 100)))
))
(check-sat)
(pop)
