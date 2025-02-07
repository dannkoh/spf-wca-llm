; Combined SMT for checking equivalence
; Original constants:
(declare-const in5 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0)))
(pop)

; Generated constraints (B):
(push)
(assert (= (ite (= in0 1) true false) (ite (= in0 0) false true)) (= (ite (= in1 1) false true) (ite (= in1 0) true false)) (= (ite (= in2 1) true false) (ite (= in2 0) false true)) (= (ite (= in3 1) false true) (ite (= in3 0) true false)) (= (ite (= in4 1) true false) (ite (= in4 0) false true)) (= (ite (= in5 1) false true) (ite (= in5 0) true false)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0)))
(assert (not
(and (= (ite (= in0 1) true false) (ite (= in0 0) false true)) (= (ite (= in1 1) false true) (ite (= in1 0) true false)) (= (ite (= in2 1) true false) (ite (= in2 0) false true)) (= (ite (= in3 1) false true) (ite (= in3 0) true false)) (= (ite (= in4 1) true false) (ite (= in4 0) false true)) (= (ite (= in5 1) false true) (ite (= in5 0) true false)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= (ite (= in0 1) true false) (ite (= in0 0) false true)) (= (ite (= in1 1) false true) (ite (= in1 0) true false)) (= (ite (= in2 1) true false) (ite (= in2 0) false true)) (= (ite (= in3 1) false true) (ite (= in3 0) true false)) (= (ite (= in4 1) true false) (ite (= in4 0) false true)) (= (ite (= in5 1) false true) (ite (= in5 0) true false)))
(assert (not
(and (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0)))
))
(check-sat)
(pop)
