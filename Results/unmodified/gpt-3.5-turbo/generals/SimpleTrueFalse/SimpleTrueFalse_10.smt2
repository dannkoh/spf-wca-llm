; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in9 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0))  ( =  in6 1))  ( =  in7 0))  ( =  in8 1))  ( =  in9 0)))
(pop)

; Generated constraints (B):
(push)
(assert (and (= in0 1) (= in1 0) (= in1 (ite (= in0 1) 0 1)) (= in2 1) (= in2 (ite (= in1 1) 0 1)) (= in3 0) (= in3 (ite (= in2 1) 0 1)) (= in4 1) (= in4 (ite (= in3 1) 0 1)) (= in5 0) (= in5 (ite (= in4 1) 0 1)) (= in6 1) (= in6 (ite (= in5 1) 0 1)) (= in7 0) (= in7 (ite (= in6 1) 0 1)) (= in8 1) (= in8 (ite (= in7 1) 0 1)) (= in9 0) (= in9 (ite (= in8 1) 0 1))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0))  ( =  in6 1))  ( =  in7 0))  ( =  in8 1))  ( =  in9 0)))
(assert (not
(and (and (= in0 1) (= in1 0) (= in1 (ite (= in0 1) 0 1)) (= in2 1) (= in2 (ite (= in1 1) 0 1)) (= in3 0) (= in3 (ite (= in2 1) 0 1)) (= in4 1) (= in4 (ite (= in3 1) 0 1)) (= in5 0) (= in5 (ite (= in4 1) 0 1)) (= in6 1) (= in6 (ite (= in5 1) 0 1)) (= in7 0) (= in7 (ite (= in6 1) 0 1)) (= in8 1) (= in8 (ite (= in7 1) 0 1)) (= in9 0) (= in9 (ite (= in8 1) 0 1))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (= in0 1) (= in1 0) (= in1 (ite (= in0 1) 0 1)) (= in2 1) (= in2 (ite (= in1 1) 0 1)) (= in3 0) (= in3 (ite (= in2 1) 0 1)) (= in4 1) (= in4 (ite (= in3 1) 0 1)) (= in5 0) (= in5 (ite (= in4 1) 0 1)) (= in6 1) (= in6 (ite (= in5 1) 0 1)) (= in7 0) (= in7 (ite (= in6 1) 0 1)) (= in8 1) (= in8 (ite (= in7 1) 0 1)) (= in9 0) (= in9 (ite (= in8 1) 0 1))))
(assert (not
(and (and (and (and (and (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0))  ( =  in6 1))  ( =  in7 0))  ( =  in8 1))  ( =  in9 0)))
))
(check-sat)
(pop)
