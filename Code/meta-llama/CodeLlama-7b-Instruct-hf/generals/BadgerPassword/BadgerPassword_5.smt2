; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 64)) (not ( = in0 35))) (not ( = in0 36)))  ( =  in0 37)) (not ( = in1 64))) (not ( = in1 35))) (not ( = in1 36)))  ( =  in1 37)) (not ( = in2 64))) (not ( = in2 35))) (not ( = in2 36)))  ( =  in2 37)) (not ( = in3 64))) (not ( = in3 35))) (not ( = in3 36)))  ( =  in3 37)) (not ( = in4 64))) (not ( = in4 35))) (not ( = in4 36)))  ( =  in4 37)))
(pop)

; Generated constraints (B):
(push)
(assert (and (op1 in0 digit)) (assert (and (op2 in0 lowercase)) (assert (and (op3 in0 uppercase)) (assert (and (op4 in0 special_char)) (assert (and (op1 in1 digit)) (assert (and (op2 in1 lowercase)) (assert (and (op3 in1 uppercase)) (assert (and (op4 in1 special_char)) (assert (and (op1 in2 digit)) (assert (and (op2 in2 lowercase)) (assert (and (op3 in2 uppercase)) (assert (and (op4 in2 special_char)) (assert (and (op1 in3 digit)) (assert (and (op2 in3 lowercase)) (assert (and (op3 in3 uppercase)) (assert (and (op4 in3 special_char)) (assert (and (op1 in4 digit)) (assert (and (op2 in4 lowercase)) (assert (and (op3 in4 uppercase)) (assert (and (op4 in4 special_char)) (assert (and (op5 in0 in1 in2 in3... in4))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 64)) (not ( = in0 35))) (not ( = in0 36)))  ( =  in0 37)) (not ( = in1 64))) (not ( = in1 35))) (not ( = in1 36)))  ( =  in1 37)) (not ( = in2 64))) (not ( = in2 35))) (not ( = in2 36)))  ( =  in2 37)) (not ( = in3 64))) (not ( = in3 35))) (not ( = in3 36)))  ( =  in3 37)) (not ( = in4 64))) (not ( = in4 35))) (not ( = in4 36)))  ( =  in4 37)))
(assert (not
(and (and (op1 in0 digit)) (assert (and (op2 in0 lowercase)) (assert (and (op3 in0 uppercase)) (assert (and (op4 in0 special_char)) (assert (and (op1 in1 digit)) (assert (and (op2 in1 lowercase)) (assert (and (op3 in1 uppercase)) (assert (and (op4 in1 special_char)) (assert (and (op1 in2 digit)) (assert (and (op2 in2 lowercase)) (assert (and (op3 in2 uppercase)) (assert (and (op4 in2 special_char)) (assert (and (op1 in3 digit)) (assert (and (op2 in3 lowercase)) (assert (and (op3 in3 uppercase)) (assert (and (op4 in3 special_char)) (assert (and (op1 in4 digit)) (assert (and (op2 in4 lowercase)) (assert (and (op3 in4 uppercase)) (assert (and (op4 in4 special_char)) (assert (and (op5 in0 in1 in2 in3... in4))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (op1 in0 digit)) (assert (and (op2 in0 lowercase)) (assert (and (op3 in0 uppercase)) (assert (and (op4 in0 special_char)) (assert (and (op1 in1 digit)) (assert (and (op2 in1 lowercase)) (assert (and (op3 in1 uppercase)) (assert (and (op4 in1 special_char)) (assert (and (op1 in2 digit)) (assert (and (op2 in2 lowercase)) (assert (and (op3 in2 uppercase)) (assert (and (op4 in2 special_char)) (assert (and (op1 in3 digit)) (assert (and (op2 in3 lowercase)) (assert (and (op3 in3 uppercase)) (assert (and (op4 in3 special_char)) (assert (and (op1 in4 digit)) (assert (and (op2 in4 lowercase)) (assert (and (op3 in4 uppercase)) (assert (and (op4 in4 special_char)) (assert (and (op5 in0 in1 in2 in3... in4))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 64)) (not ( = in0 35))) (not ( = in0 36)))  ( =  in0 37)) (not ( = in1 64))) (not ( = in1 35))) (not ( = in1 36)))  ( =  in1 37)) (not ( = in2 64))) (not ( = in2 35))) (not ( = in2 36)))  ( =  in2 37)) (not ( = in3 64))) (not ( = in3 35))) (not ( = in3 36)))  ( =  in3 37)) (not ( = in4 64))) (not ( = in4 35))) (not ( = in4 36)))  ( =  in4 37)))
))
(check-sat)
(pop)
