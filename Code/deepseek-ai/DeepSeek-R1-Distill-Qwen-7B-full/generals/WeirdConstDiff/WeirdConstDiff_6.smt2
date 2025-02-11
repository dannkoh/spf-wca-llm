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
(assert (and (and (and  ( =  ( -  in2 in1) ( -  in1 in0))  ( =  ( -  in3 in2) ( -  in2 in1)))  ( =  ( -  in4 in3) ( -  in3 in2)))  ( =  ( -  in5 in4) ( -  in4 in3))))
(pop)

; Generated constraints (B):
(push)
(assert (= ( - in2 in1) ( - in1 in0) and (= ( - in3 in2) ( - in2 in1) and (= ( - in4 in3) ( - in3 in2) and (= ( - in5 in4) ( - in4 in3))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and  ( =  ( -  in2 in1) ( -  in1 in0))  ( =  ( -  in3 in2) ( -  in2 in1)))  ( =  ( -  in4 in3) ( -  in3 in2)))  ( =  ( -  in5 in4) ( -  in4 in3))))
(assert (not
(and (= ( - in2 in1) ( - in1 in0) and (= ( - in3 in2) ( - in2 in1) and (= ( - in4 in3) ( - in3 in2) and (= ( - in5 in4) ( - in4 in3))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= ( - in2 in1) ( - in1 in0) and (= ( - in3 in2) ( - in2 in1) and (= ( - in4 in3) ( - in3 in2) and (= ( - in5 in4) ( - in4 in3))
(assert (not
(and (and (and (and  ( =  ( -  in2 in1) ( -  in1 in0))  ( =  ( -  in3 in2) ( -  in2 in1)))  ( =  ( -  in4 in3) ( -  in3 in2)))  ( =  ( -  in5 in4) ( -  in4 in3))))
))
(check-sat)
(pop)
