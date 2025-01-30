; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in9 Int)
(declare-const in10 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 in1)) (not ( = in0 in2))) (not ( = in0 in3))) (not ( = in0 in4))) (not ( = in0 in5))) (not ( = in0 in6))) (not ( = in0 in7))) (not ( = in0 in8))) (not ( = in0 in9))) (not ( = in0 in10))) (not ( = in1 in2))) (not ( = in1 in3))) (not ( = in1 in4))) (not ( = in1 in5))) (not ( = in1 in6))) (not ( = in1 in7))) (not ( = in1 in8))) (not ( = in1 in9))) (not ( = in1 in10))) (not ( = in2 in3))) (not ( = in2 in4))) (not ( = in2 in5))) (not ( = in2 in6))) (not ( = in2 in7))) (not ( = in2 in8))) (not ( = in2 in9))) (not ( = in2 in10))) (not ( = in3 in4))) (not ( = in3 in5))) (not ( = in3 in6))) (not ( = in3 in7))) (not ( = in3 in8))) (not ( = in3 in9))) (not ( = in3 in10))) (not ( = in4 in5))) (not ( = in4 in6))) (not ( = in4 in7))) (not ( = in4 in8))) (not ( = in4 in9))) (not ( = in4 in10))) (not ( = in5 in6))) (not ( = in5 in7))) (not ( = in5 in8))) (not ( = in5 in9))) (not ( = in5 in10))) (not ( = in6 in7))) (not ( = in6 in8))) (not ( = in6 in9))) (not ( = in6 in10))) (not ( = in7 in8))) (not ( = in7 in9))) (not ( = in7 in10))) (not ( = in8 in9))) (not ( = in8 in10))) (not ( = in9 in10))))
(pop)

; Generated constraints (B):
(push)
(assert (and (not ( = in0 in1)) (not ( = in0 in2)) (not ( = in0 in3)) (not ( = in0 in4)) (not ( = in0 in5)) (not ( = in0 in6)) (not ( = in0 in7)) (not ( = in0 in8)) (not ( = in0 in9)) (not ( = in0 in10)) (not ( = in1 in2)) (not ( = in1 in3)) (not ( = in1 in4)) (not ( = in1 in5)) (not ( = in1 in6)) (not ( = in1 in7)) (not ( = in1 in8)) (not ( = in1 in9)) (not ( = in1 in10)) (not ( = in2 in3)) (not ( = in2 in4)) (not ( = in2 in5)) (not ( = in2 in6)) (not ( = in2 in7)) (not ( = in2 in8)) (not ( = in2 in9)) (not ( = in2 in10)) (not ( = in3 in4)) (not ( = in3 in5)) (not ( = in3 in6)) (not ( = in3 in7)) (not ( = in3 in8)) (not ( = in3 in9)) (not ( = in3 in10)) (not ( = in4 in5)) (not ( = in4 in6)) (not ( = in4 in7)) (not ( = in4 in8)) (not ( = in4 in9)) (not ( = in4 in10)) (not ( = in5 in6)) (not ( = in5 in7)) (not ( = in5 in8)) (not ( = in5 in9)) (not ( = in5 in10)) (not ( = in6 in7)) (not ( = in6 in8)) (not ( = in6 in9)) (not ( = in6 in10)) (not ( = in7 in8)) (not ( = in7 in9)) (not ( = in7 in10)) (not ( = in8 in9)) (not ( = in8 in10)) (not ( = in9 in10))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 in1)) (not ( = in0 in2))) (not ( = in0 in3))) (not ( = in0 in4))) (not ( = in0 in5))) (not ( = in0 in6))) (not ( = in0 in7))) (not ( = in0 in8))) (not ( = in0 in9))) (not ( = in0 in10))) (not ( = in1 in2))) (not ( = in1 in3))) (not ( = in1 in4))) (not ( = in1 in5))) (not ( = in1 in6))) (not ( = in1 in7))) (not ( = in1 in8))) (not ( = in1 in9))) (not ( = in1 in10))) (not ( = in2 in3))) (not ( = in2 in4))) (not ( = in2 in5))) (not ( = in2 in6))) (not ( = in2 in7))) (not ( = in2 in8))) (not ( = in2 in9))) (not ( = in2 in10))) (not ( = in3 in4))) (not ( = in3 in5))) (not ( = in3 in6))) (not ( = in3 in7))) (not ( = in3 in8))) (not ( = in3 in9))) (not ( = in3 in10))) (not ( = in4 in5))) (not ( = in4 in6))) (not ( = in4 in7))) (not ( = in4 in8))) (not ( = in4 in9))) (not ( = in4 in10))) (not ( = in5 in6))) (not ( = in5 in7))) (not ( = in5 in8))) (not ( = in5 in9))) (not ( = in5 in10))) (not ( = in6 in7))) (not ( = in6 in8))) (not ( = in6 in9))) (not ( = in6 in10))) (not ( = in7 in8))) (not ( = in7 in9))) (not ( = in7 in10))) (not ( = in8 in9))) (not ( = in8 in10))) (not ( = in9 in10))))
(assert (not
(and (and (not ( = in0 in1)) (not ( = in0 in2)) (not ( = in0 in3)) (not ( = in0 in4)) (not ( = in0 in5)) (not ( = in0 in6)) (not ( = in0 in7)) (not ( = in0 in8)) (not ( = in0 in9)) (not ( = in0 in10)) (not ( = in1 in2)) (not ( = in1 in3)) (not ( = in1 in4)) (not ( = in1 in5)) (not ( = in1 in6)) (not ( = in1 in7)) (not ( = in1 in8)) (not ( = in1 in9)) (not ( = in1 in10)) (not ( = in2 in3)) (not ( = in2 in4)) (not ( = in2 in5)) (not ( = in2 in6)) (not ( = in2 in7)) (not ( = in2 in8)) (not ( = in2 in9)) (not ( = in2 in10)) (not ( = in3 in4)) (not ( = in3 in5)) (not ( = in3 in6)) (not ( = in3 in7)) (not ( = in3 in8)) (not ( = in3 in9)) (not ( = in3 in10)) (not ( = in4 in5)) (not ( = in4 in6)) (not ( = in4 in7)) (not ( = in4 in8)) (not ( = in4 in9)) (not ( = in4 in10)) (not ( = in5 in6)) (not ( = in5 in7)) (not ( = in5 in8)) (not ( = in5 in9)) (not ( = in5 in10)) (not ( = in6 in7)) (not ( = in6 in8)) (not ( = in6 in9)) (not ( = in6 in10)) (not ( = in7 in8)) (not ( = in7 in9)) (not ( = in7 in10)) (not ( = in8 in9)) (not ( = in8 in10)) (not ( = in9 in10))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (not ( = in0 in1)) (not ( = in0 in2)) (not ( = in0 in3)) (not ( = in0 in4)) (not ( = in0 in5)) (not ( = in0 in6)) (not ( = in0 in7)) (not ( = in0 in8)) (not ( = in0 in9)) (not ( = in0 in10)) (not ( = in1 in2)) (not ( = in1 in3)) (not ( = in1 in4)) (not ( = in1 in5)) (not ( = in1 in6)) (not ( = in1 in7)) (not ( = in1 in8)) (not ( = in1 in9)) (not ( = in1 in10)) (not ( = in2 in3)) (not ( = in2 in4)) (not ( = in2 in5)) (not ( = in2 in6)) (not ( = in2 in7)) (not ( = in2 in8)) (not ( = in2 in9)) (not ( = in2 in10)) (not ( = in3 in4)) (not ( = in3 in5)) (not ( = in3 in6)) (not ( = in3 in7)) (not ( = in3 in8)) (not ( = in3 in9)) (not ( = in3 in10)) (not ( = in4 in5)) (not ( = in4 in6)) (not ( = in4 in7)) (not ( = in4 in8)) (not ( = in4 in9)) (not ( = in4 in10)) (not ( = in5 in6)) (not ( = in5 in7)) (not ( = in5 in8)) (not ( = in5 in9)) (not ( = in5 in10)) (not ( = in6 in7)) (not ( = in6 in8)) (not ( = in6 in9)) (not ( = in6 in10)) (not ( = in7 in8)) (not ( = in7 in9)) (not ( = in7 in10)) (not ( = in8 in9)) (not ( = in8 in10)) (not ( = in9 in10))))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 in1)) (not ( = in0 in2))) (not ( = in0 in3))) (not ( = in0 in4))) (not ( = in0 in5))) (not ( = in0 in6))) (not ( = in0 in7))) (not ( = in0 in8))) (not ( = in0 in9))) (not ( = in0 in10))) (not ( = in1 in2))) (not ( = in1 in3))) (not ( = in1 in4))) (not ( = in1 in5))) (not ( = in1 in6))) (not ( = in1 in7))) (not ( = in1 in8))) (not ( = in1 in9))) (not ( = in1 in10))) (not ( = in2 in3))) (not ( = in2 in4))) (not ( = in2 in5))) (not ( = in2 in6))) (not ( = in2 in7))) (not ( = in2 in8))) (not ( = in2 in9))) (not ( = in2 in10))) (not ( = in3 in4))) (not ( = in3 in5))) (not ( = in3 in6))) (not ( = in3 in7))) (not ( = in3 in8))) (not ( = in3 in9))) (not ( = in3 in10))) (not ( = in4 in5))) (not ( = in4 in6))) (not ( = in4 in7))) (not ( = in4 in8))) (not ( = in4 in9))) (not ( = in4 in10))) (not ( = in5 in6))) (not ( = in5 in7))) (not ( = in5 in8))) (not ( = in5 in9))) (not ( = in5 in10))) (not ( = in6 in7))) (not ( = in6 in8))) (not ( = in6 in9))) (not ( = in6 in10))) (not ( = in7 in8))) (not ( = in7 in9))) (not ( = in7 in10))) (not ( = in8 in9))) (not ( = in8 in10))) (not ( = in9 in10))))
))
(check-sat)
(pop)
