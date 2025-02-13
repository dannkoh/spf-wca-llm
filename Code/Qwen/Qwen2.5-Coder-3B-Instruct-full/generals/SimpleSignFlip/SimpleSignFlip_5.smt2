; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and  ( =  in0 in1)  ( <  in1 in2))  ( =  in2 in3))  ( <  in3 in4)))
(pop)

; Generated constraints (B):
(push)
(assert (or (= in1 in0) (= (bvadd in0 (bv1) in1) 0)))
(assert (or (= in2 in1) (= (bvadd in1 (bv1) in2) 0)))
(assert (or (= in3 in2) (= (bvadd in2 (bv1) in3) 0)))
(assert (or (= in4 in3) (= (bvadd in3 (bv1) in4) 0)))
(assert (or (= (bvmod in3 in2) 1) (= (bvmod in3 in2) 0)))
(assert (or (= (bvmod in4 in3) 1) (= (bvmod in4 in3) 0)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and  ( =  in0 in1)  ( <  in1 in2))  ( =  in2 in3))  ( <  in3 in4)))
(assert (not
(and (or (= in1 in0) (= (bvadd in0 (bv1) in1) 0)) (or (= in2 in1) (= (bvadd in1 (bv1) in2) 0)) (or (= in3 in2) (= (bvadd in2 (bv1) in3) 0)) (or (= in4 in3) (= (bvadd in3 (bv1) in4) 0)) (or (= (bvmod in3 in2) 1) (= (bvmod in3 in2) 0)) (or (= (bvmod in4 in3) 1) (= (bvmod in4 in3) 0)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (or (= in1 in0) (= (bvadd in0 (bv1) in1) 0)))
(assert (or (= in2 in1) (= (bvadd in1 (bv1) in2) 0)))
(assert (or (= in3 in2) (= (bvadd in2 (bv1) in3) 0)))
(assert (or (= in4 in3) (= (bvadd in3 (bv1) in4) 0)))
(assert (or (= (bvmod in3 in2) 1) (= (bvmod in3 in2) 0)))
(assert (or (= (bvmod in4 in3) 1) (= (bvmod in4 in3) 0)))
(assert (not
(and (and (and (and  ( =  in0 in1)  ( <  in1 in2))  ( =  in2 in3))  ( <  in3 in4)))
))
(check-sat)
(pop)
