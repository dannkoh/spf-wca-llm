; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in1 Int)

; Original constraints (A):
(push)
(assert (and  ( =  in0 1)  ( =  in1 0)))
(pop)

; Generated constraints (B):
(push)
(assert (= (ite (= in0 1) true false) (ite (= in0 0) false true)) (= (ite (= in1 1) false true) (ite (= in1 0) true false)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and  ( =  in0 1)  ( =  in1 0)))
(assert (not
(and (= (ite (= in0 1) true false) (ite (= in0 0) false true)) (= (ite (= in1 1) false true) (ite (= in1 0) true false)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= (ite (= in0 1) true false) (ite (= in0 0) false true)) (= (ite (= in1 1) false true) (ite (= in1 0) true false)))
(assert (not
(and (and  ( =  in0 1)  ( =  in1 0)))
))
(check-sat)
(pop)
