; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in7 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and  ( <  in7 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7)))
(pop)

; Generated constraints (B):
(push)
(assert (and ( < in1 in0) ( < in2 in0) ( < in3 in0) ( < in4 in0) ( < in5 in0) ( < in6 in0) ( < in7 in0) ) (and ( < in0 in1) ( < in2 in1) ( < in3 in1) ( < in4 in1) ( < in5 in1) ( < in6 in1) ( < in7 in1) ) (and ( < in0 in2) ( < in1 in2) ( < in3 in2) ( < in4 in2) ( < in5 in2) ( < in6 in2) ( < in7 in2) ) (and ( < in0 in3) ( < in1 in3) ( < in2 in3) ( < in4 in3) ( < in5 in3) ( < in6 in3) ( < in7 in3) ) (and ( < in0 in4) ( < in1 in4) ( < in2 in4) ( < in3 in4) ( < in5 in4) ( < in6 in4) ( < in7 in4) ) (and ( < in0 in5) ( < in1 in5) ( < in2 in5) ( < in3 in5) ( < in4 in5) ( < in6 in5) ( < in7 in5) ) (and ( < in0 in6) ( < in1 in6) ( < in2 in6) ( < in3 in6) ( < in4 in6) ( < in5 in6) ( < in7 in6) ) (and ( < in0 in7) ( < in1 in7) ( < in2 in7) ( < in3 in7) ( < in4 in7) ( < in5 in7) ( < in6 in7) ))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and  ( <  in7 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7)))
(assert (not
(and (and ( < in1 in0) ( < in2 in0) ( < in3 in0) ( < in4 in0) ( < in5 in0) ( < in6 in0) ( < in7 in0) ) (and ( < in0 in1) ( < in2 in1) ( < in3 in1) ( < in4 in1) ( < in5 in1) ( < in6 in1) ( < in7 in1) ) (and ( < in0 in2) ( < in1 in2) ( < in3 in2) ( < in4 in2) ( < in5 in2) ( < in6 in2) ( < in7 in2) ) (and ( < in0 in3) ( < in1 in3) ( < in2 in3) ( < in4 in3) ( < in5 in3) ( < in6 in3) ( < in7 in3) ) (and ( < in0 in4) ( < in1 in4) ( < in2 in4) ( < in3 in4) ( < in5 in4) ( < in6 in4) ( < in7 in4) ) (and ( < in0 in5) ( < in1 in5) ( < in2 in5) ( < in3 in5) ( < in4 in5) ( < in6 in5) ( < in7 in5) ) (and ( < in0 in6) ( < in1 in6) ( < in2 in6) ( < in3 in6) ( < in4 in6) ( < in5 in6) ( < in7 in6) ) (and ( < in0 in7) ( < in1 in7) ( < in2 in7) ( < in3 in7) ( < in4 in7) ( < in5 in7) ( < in6 in7) ))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and ( < in1 in0) ( < in2 in0) ( < in3 in0) ( < in4 in0) ( < in5 in0) ( < in6 in0) ( < in7 in0) ) (and ( < in0 in1) ( < in2 in1) ( < in3 in1) ( < in4 in1) ( < in5 in1) ( < in6 in1) ( < in7 in1) ) (and ( < in0 in2) ( < in1 in2) ( < in3 in2) ( < in4 in2) ( < in5 in2) ( < in6 in2) ( < in7 in2) ) (and ( < in0 in3) ( < in1 in3) ( < in2 in3) ( < in4 in3) ( < in5 in3) ( < in6 in3) ( < in7 in3) ) (and ( < in0 in4) ( < in1 in4) ( < in2 in4) ( < in3 in4) ( < in5 in4) ( < in6 in4) ( < in7 in4) ) (and ( < in0 in5) ( < in1 in5) ( < in2 in5) ( < in3 in5) ( < in4 in5) ( < in6 in5) ( < in7 in5) ) (and ( < in0 in6) ( < in1 in6) ( < in2 in6) ( < in3 in6) ( < in4 in6) ( < in5 in6) ( < in7 in6) ) (and ( < in0 in7) ( < in1 in7) ( < in2 in7) ( < in3 in7) ( < in4 in7) ( < in5 in7) ( < in6 in7) ))
(assert (not
(and (and (and (and (and (and (and  ( <  in7 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7)))
))
(check-sat)
(pop)
