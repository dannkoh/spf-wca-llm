; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in3 in2)))
(pop)

; Generated constraints (B):
(push)
(assert (< in0 in1))
(assert (< in1 in2))
(assert (< in2 in3))
(assert (< in3 in4))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in3 in2)))
(assert (not
(and (< in0 in1) (< in1 in2) (< in2 in3) (< in3 in4))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (< in0 in1))
(assert (< in1 in2))
(assert (< in2 in3))
(assert (< in3 in4))
(assert (not
(and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in3 in2)))
))
(check-sat)
(pop)
