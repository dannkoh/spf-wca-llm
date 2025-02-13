; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100)))
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
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100)))
(assert (not
(and (<= 0 100) (>= 0 0) (<= 1 100) (>= 1 0) (<= 2 100) (>= 2 0) (<= 3 100) (>= 3 0))
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
(assert (not
(and (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100)))
))
(check-sat)
(pop)
