; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and  ( =  in0 120)  ( =  in1 120))  ( =  in2 120))  ( =  in3 120))  ( =  in4 120))  ( =  in5 120))  ( =  in6 120)))
(pop)

; Generated constraints (B):
(push)
(assert (and  ( =  in0 120)  ( =  in1 120)  ( =  in2 120)  ( =  in3 120)  ( =  in4 120)  ( =  in5 120)  ( =  in6 120) ))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and  ( =  in0 120)  ( =  in1 120))  ( =  in2 120))  ( =  in3 120))  ( =  in4 120))  ( =  in5 120))  ( =  in6 120)))
(assert (not
(and (and  ( =  in0 120)  ( =  in1 120)  ( =  in2 120)  ( =  in3 120)  ( =  in4 120)  ( =  in5 120)  ( =  in6 120) ))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and  ( =  in0 120)  ( =  in1 120)  ( =  in2 120)  ( =  in3 120)  ( =  in4 120)  ( =  in5 120)  ( =  in6 120) ))
(assert (not
(and (and (and (and (and (and (and  ( =  in0 120)  ( =  in1 120))  ( =  in2 120))  ( =  in3 120))  ( =  in4 120))  ( =  in5 120))  ( =  in6 120)))
))
(check-sat)
(pop)
