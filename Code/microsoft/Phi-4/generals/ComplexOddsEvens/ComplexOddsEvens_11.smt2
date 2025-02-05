; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in10 Int)
(declare-const in9 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and  ( <  in9 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7))  ( <  in6 in8))  ( <  in7 in9))  ( <  in8 in10)))
(pop)

; Generated constraints (B):
(push)
(assert (and  ( <  in1 in0)  ( <  in3 in2)  ( <  in5 in4)  ( <  in7 in6)  ( <  in9 in8) ))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and  ( <  in9 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7))  ( <  in6 in8))  ( <  in7 in9))  ( <  in8 in10)))
(assert (not
(and (and  ( <  in1 in0)  ( <  in3 in2)  ( <  in5 in4)  ( <  in7 in6)  ( <  in9 in8) ))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and  ( <  in1 in0)  ( <  in3 in2)  ( <  in5 in4)  ( <  in7 in6)  ( <  in9 in8) ))
(assert (not
(and (and (and (and (and (and (and (and (and (and  ( <  in9 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7))  ( <  in6 in8))  ( <  in7 in9))  ( <  in8 in10)))
))
(check-sat)
(pop)
