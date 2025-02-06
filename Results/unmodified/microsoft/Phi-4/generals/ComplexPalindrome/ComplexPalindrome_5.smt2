; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and  ( <  in0 in4)  ( <  in1 in3)))
(pop)

; Generated constraints (B):
(push)
(assert (and (< in0 in4) (< in1 in3)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and  ( <  in0 in4)  ( <  in1 in3)))
(assert (not
(and (and (< in0 in4) (< in1 in3)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (< in0 in4) (< in1 in3)))
(assert (not
(and (and  ( <  in0 in4)  ( <  in1 in3)))
))
(check-sat)
(pop)
