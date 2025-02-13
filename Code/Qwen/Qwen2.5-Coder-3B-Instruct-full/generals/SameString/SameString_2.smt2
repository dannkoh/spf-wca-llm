; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in1 Int)

; Original constraints (A):
(push)
(assert (and  ( =  in0 120)  ( =  in1 120)))
(pop)

; Generated constraints (B):
(push)
(and (= in1 120) (= in{N} 120))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and  ( =  in0 120)  ( =  in1 120)))
(assert (not
(and )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(and (= in1 120) (= in{N} 120))
(assert (not
(and (and  ( =  in0 120)  ( =  in1 120)))
))
(check-sat)
(pop)
