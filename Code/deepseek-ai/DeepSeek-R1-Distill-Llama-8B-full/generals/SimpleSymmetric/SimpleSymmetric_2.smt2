; Combined SMT for checking equivalence
; Original constants:
(declare-const in1x0 Int)
(declare-const in0x1 Int)

; Original constraints (A):
(push)
(assert  ( =  in1x0 in0x1))
(pop)

; Generated constraints (B):
(push)
and(assert (= in0x1 in1x0))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert  ( =  in1x0 in0x1))
(assert (not
(and )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
and(assert (= in0x1 in1x0))
(assert (not
(and  ( =  in1x0 in0x1))
))
(check-sat)
(pop)
