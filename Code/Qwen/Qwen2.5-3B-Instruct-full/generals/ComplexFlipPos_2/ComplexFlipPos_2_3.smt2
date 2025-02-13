; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)

; Original constraints (A):
(push)
(assert (and  ( <  in0 in2)  ( <  in1 in0)))
(pop)

; Generated constraints (B):
(push)
(assert (< in2 in1))
(assert (< in3 in2))
(assert (< in0 in3))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and  ( <  in0 in2)  ( <  in1 in0)))
(assert (not
(and (< in2 in1) (< in3 in2) (< in0 in3))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (< in2 in1))
(assert (< in3 in2))
(assert (< in0 in3))
(assert (not
(and (and  ( <  in0 in2)  ( <  in1 in0)))
))
(check-sat)
(pop)
