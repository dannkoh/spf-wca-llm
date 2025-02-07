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
(assert (= in0 'x) (= in1 'x))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and  ( =  in0 120)  ( =  in1 120)))
(assert (not
(and (= in0 'x) (= in1 'x))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= in0 'x) (= in1 'x))
(assert (not
(and (and  ( =  in0 120)  ( =  in1 120)))
))
(check-sat)
(pop)
