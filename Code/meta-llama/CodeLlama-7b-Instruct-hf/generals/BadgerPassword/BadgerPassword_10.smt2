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
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 64)) (not ( = in0 35))) (not ( = in0 36)))  ( =  in0 37)) (not ( = in1 64))) (not ( = in1 35))) (not ( = in1 36)))  ( =  in1 37)) (not ( = in2 64))) (not ( = in2 35))) (not ( = in2 36)))  ( =  in2 37)) (not ( = in3 64))) (not ( = in3 35))) (not ( = in3 36)))  ( =  in3 37)) (not ( = in4 64))) (not ( = in4 35))) (not ( = in4 36)))  ( =  in4 37)) (not ( = in5 64))) (not ( = in5 35))) (not ( = in5 36)))  ( =  in5 37)) (not ( = in6 64))) (not ( = in6 35))) (not ( = in6 36)))  ( =  in6 37)) (not ( = in7 64))) (not ( = in7 35))) (not ( = in7 36)))  ( =  in7 37)) (not ( = in8 64))) (not ( = in8 35))) (not ( = in8 36)))  ( =  in8 37)) (not ( = in9 64))) (not ( = in9 35))) (not ( = in9 36)))  ( =  in9 37)))
(pop)

; Generated constraints (B):
(push)
(assert (and (op1 in0 digit)) (assert (and (op2 in0 lowercase)) (assert (and (op3 in0 uppercase)) (assert (and (op4 in0 special_char)) (assert (and (op1 in1 digit)) (assert (and (op2 in1 lowercase)) (assert (and (op3 in1 uppercase)) (assert (and (op4 in1 special_char)) (assert (and (op1 in2 digit)) (assert (and (op2 in2 lowercase)) (assert (and (op3 in2 uppercase)) (assert (and (op4 in2 special_char)) (assert (and (op1 in3 digit)) (assert (and (op2 in3 lowercase)) (assert (and (op3 in3 uppercase)) (assert (and (op4 in3 special_char)) (assert (and (op1 in4 digit)) (assert (and (op2 in4 lowercase)) (assert (and (op3 in4 uppercase)) (assert (and (op4 in4 special_char)) (assert (and (op1 in5 digit)) (assert (and (op2 in5 lowercase)) (assert (and (op3 in5 uppercase)) (assert (and (op4 in5 special_char)) (assert (and (op1 in6 digit)) (assert (and (op2 in6 lowercase)) (assert (and (op3 in6 uppercase)) (assert (and (op4 in6 special_char)) (assert (and (op1 in7 digit)) (assert (and (op2 in7 lowercase)) (assert (and (op3 in7 uppercase)) (assert (and (op4 in7 special_char)) (assert (and (op1 in8 digit)) (assert (and (op2 in8 lowercase)) (assert (and (op3 in8 uppercase)) (assert (and (op4 in8 special_char)) (assert (and (op1 in9 digit)) (assert (and (op2 in9 lowercase)) (assert (and (op3 in9 uppercase)) (assert (and (op4 in9 special_char)) (assert (and (op5 in0 in1 in2 in3... in9))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 64)) (not ( = in0 35))) (not ( = in0 36)))  ( =  in0 37)) (not ( = in1 64))) (not ( = in1 35))) (not ( = in1 36)))  ( =  in1 37)) (not ( = in2 64))) (not ( = in2 35))) (not ( = in2 36)))  ( =  in2 37)) (not ( = in3 64))) (not ( = in3 35))) (not ( = in3 36)))  ( =  in3 37)) (not ( = in4 64))) (not ( = in4 35))) (not ( = in4 36)))  ( =  in4 37)) (not ( = in5 64))) (not ( = in5 35))) (not ( = in5 36)))  ( =  in5 37)) (not ( = in6 64))) (not ( = in6 35))) (not ( = in6 36)))  ( =  in6 37)) (not ( = in7 64))) (not ( = in7 35))) (not ( = in7 36)))  ( =  in7 37)) (not ( = in8 64))) (not ( = in8 35))) (not ( = in8 36)))  ( =  in8 37)) (not ( = in9 64))) (not ( = in9 35))) (not ( = in9 36)))  ( =  in9 37)))
(assert (not
(and (and (op1 in0 digit)) (assert (and (op2 in0 lowercase)) (assert (and (op3 in0 uppercase)) (assert (and (op4 in0 special_char)) (assert (and (op1 in1 digit)) (assert (and (op2 in1 lowercase)) (assert (and (op3 in1 uppercase)) (assert (and (op4 in1 special_char)) (assert (and (op1 in2 digit)) (assert (and (op2 in2 lowercase)) (assert (and (op3 in2 uppercase)) (assert (and (op4 in2 special_char)) (assert (and (op1 in3 digit)) (assert (and (op2 in3 lowercase)) (assert (and (op3 in3 uppercase)) (assert (and (op4 in3 special_char)) (assert (and (op1 in4 digit)) (assert (and (op2 in4 lowercase)) (assert (and (op3 in4 uppercase)) (assert (and (op4 in4 special_char)) (assert (and (op1 in5 digit)) (assert (and (op2 in5 lowercase)) (assert (and (op3 in5 uppercase)) (assert (and (op4 in5 special_char)) (assert (and (op1 in6 digit)) (assert (and (op2 in6 lowercase)) (assert (and (op3 in6 uppercase)) (assert (and (op4 in6 special_char)) (assert (and (op1 in7 digit)) (assert (and (op2 in7 lowercase)) (assert (and (op3 in7 uppercase)) (assert (and (op4 in7 special_char)) (assert (and (op1 in8 digit)) (assert (and (op2 in8 lowercase)) (assert (and (op3 in8 uppercase)) (assert (and (op4 in8 special_char)) (assert (and (op1 in9 digit)) (assert (and (op2 in9 lowercase)) (assert (and (op3 in9 uppercase)) (assert (and (op4 in9 special_char)) (assert (and (op5 in0 in1 in2 in3... in9))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (op1 in0 digit)) (assert (and (op2 in0 lowercase)) (assert (and (op3 in0 uppercase)) (assert (and (op4 in0 special_char)) (assert (and (op1 in1 digit)) (assert (and (op2 in1 lowercase)) (assert (and (op3 in1 uppercase)) (assert (and (op4 in1 special_char)) (assert (and (op1 in2 digit)) (assert (and (op2 in2 lowercase)) (assert (and (op3 in2 uppercase)) (assert (and (op4 in2 special_char)) (assert (and (op1 in3 digit)) (assert (and (op2 in3 lowercase)) (assert (and (op3 in3 uppercase)) (assert (and (op4 in3 special_char)) (assert (and (op1 in4 digit)) (assert (and (op2 in4 lowercase)) (assert (and (op3 in4 uppercase)) (assert (and (op4 in4 special_char)) (assert (and (op1 in5 digit)) (assert (and (op2 in5 lowercase)) (assert (and (op3 in5 uppercase)) (assert (and (op4 in5 special_char)) (assert (and (op1 in6 digit)) (assert (and (op2 in6 lowercase)) (assert (and (op3 in6 uppercase)) (assert (and (op4 in6 special_char)) (assert (and (op1 in7 digit)) (assert (and (op2 in7 lowercase)) (assert (and (op3 in7 uppercase)) (assert (and (op4 in7 special_char)) (assert (and (op1 in8 digit)) (assert (and (op2 in8 lowercase)) (assert (and (op3 in8 uppercase)) (assert (and (op4 in8 special_char)) (assert (and (op1 in9 digit)) (assert (and (op2 in9 lowercase)) (assert (and (op3 in9 uppercase)) (assert (and (op4 in9 special_char)) (assert (and (op5 in0 in1 in2 in3... in9))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 64)) (not ( = in0 35))) (not ( = in0 36)))  ( =  in0 37)) (not ( = in1 64))) (not ( = in1 35))) (not ( = in1 36)))  ( =  in1 37)) (not ( = in2 64))) (not ( = in2 35))) (not ( = in2 36)))  ( =  in2 37)) (not ( = in3 64))) (not ( = in3 35))) (not ( = in3 36)))  ( =  in3 37)) (not ( = in4 64))) (not ( = in4 35))) (not ( = in4 36)))  ( =  in4 37)) (not ( = in5 64))) (not ( = in5 35))) (not ( = in5 36)))  ( =  in5 37)) (not ( = in6 64))) (not ( = in6 35))) (not ( = in6 36)))  ( =  in6 37)) (not ( = in7 64))) (not ( = in7 35))) (not ( = in7 36)))  ( =  in7 37)) (not ( = in8 64))) (not ( = in8 35))) (not ( = in8 36)))  ( =  in8 37)) (not ( = in9 64))) (not ( = in9 35))) (not ( = in9 36)))  ( =  in9 37)))
))
(check-sat)
(pop)
