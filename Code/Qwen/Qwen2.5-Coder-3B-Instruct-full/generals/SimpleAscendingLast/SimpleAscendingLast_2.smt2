; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in1 Int)

; Original constraints (A):
(push)
(assert  ( <  in1 in0))
(pop)

; Generated constraints (B):
(push)
(assert (< in0 in1))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert  ( <  in1 in0))
(assert (not
(and (< in0 in1))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (< in0 in1))
(assert (not
(and  ( <  in1 in0))
))
(check-sat)
(pop)
