; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)

; Original constraints (A):
(push)
(assert (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1)))
(pop)

; Generated constraints (B):
(push)
(assert (= in0 1))
(assert (= in1 1))
(assert (= in2 1))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1)))
(assert (not
(and (= in0 1) (= in1 1) (= in2 1))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= in0 1))
(assert (= in1 1))
(assert (= in2 1))
(assert (not
(and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1)))
))
(check-sat)
(pop)
