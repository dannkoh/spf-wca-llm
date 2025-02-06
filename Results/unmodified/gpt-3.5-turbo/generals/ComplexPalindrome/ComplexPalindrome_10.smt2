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
(assert (and (and (and (and  ( <  in0 in9)  ( <  in1 in8))  ( <  in2 in7))  ( <  in3 in6))  ( <  in4 in5)))
(pop)

; Generated constraints (B):
(push)
(assert ( < in0 in1)) (assert ( < in0 in2)) (assert ( < in0 in3)) (assert ( < in0 in4)) (assert ( < in0 in5)) (assert ( < in0 in6)) (assert ( < in0 in7)) (assert ( < in0 in8)) (assert ( < in0 in9)) (assert ( < in1 in2)) (assert ( < in1 in3)) (assert ( < in1 in4)) (assert ( < in1 in5)) (assert ( < in1 in6)) (assert ( < in1 in7)) (assert ( < in1 in8)) (assert ( < in1 in9)) (assert ( < in2 in3)) (assert ( < in2 in4)) (assert ( < in2 in5)) (assert ( < in2 in6)) (assert ( < in2 in7)) (assert ( < in2 in8)) (assert ( < in2 in9)) (assert ( < in3 in4)) (assert ( < in3 in5)) (assert ( < in3 in6)) (assert ( < in3 in7)) (assert ( < in3 in8)) (assert ( < in3 in9)) (assert ( < in4 in5)) (assert ( < in4 in6)) (assert ( < in4 in7)) (assert ( < in4 in8)) (assert ( < in4 in9)) (assert ( < in5 in6)) (assert ( < in5 in7)) (assert ( < in5 in8)) (assert ( < in5 in9)) (assert ( < in6 in7)) (assert ( < in6 in8)) (assert ( < in6 in9)) (assert ( < in7 in8)) (assert ( < in7 in9)) (assert ( < in8 in9))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and  ( <  in0 in9)  ( <  in1 in8))  ( <  in2 in7))  ( <  in3 in6))  ( <  in4 in5)))
(assert (not
(and ( < in0 in1)) (assert ( < in0 in2)) (assert ( < in0 in3)) (assert ( < in0 in4)) (assert ( < in0 in5)) (assert ( < in0 in6)) (assert ( < in0 in7)) (assert ( < in0 in8)) (assert ( < in0 in9)) (assert ( < in1 in2)) (assert ( < in1 in3)) (assert ( < in1 in4)) (assert ( < in1 in5)) (assert ( < in1 in6)) (assert ( < in1 in7)) (assert ( < in1 in8)) (assert ( < in1 in9)) (assert ( < in2 in3)) (assert ( < in2 in4)) (assert ( < in2 in5)) (assert ( < in2 in6)) (assert ( < in2 in7)) (assert ( < in2 in8)) (assert ( < in2 in9)) (assert ( < in3 in4)) (assert ( < in3 in5)) (assert ( < in3 in6)) (assert ( < in3 in7)) (assert ( < in3 in8)) (assert ( < in3 in9)) (assert ( < in4 in5)) (assert ( < in4 in6)) (assert ( < in4 in7)) (assert ( < in4 in8)) (assert ( < in4 in9)) (assert ( < in5 in6)) (assert ( < in5 in7)) (assert ( < in5 in8)) (assert ( < in5 in9)) (assert ( < in6 in7)) (assert ( < in6 in8)) (assert ( < in6 in9)) (assert ( < in7 in8)) (assert ( < in7 in9)) (assert ( < in8 in9))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert ( < in0 in1)) (assert ( < in0 in2)) (assert ( < in0 in3)) (assert ( < in0 in4)) (assert ( < in0 in5)) (assert ( < in0 in6)) (assert ( < in0 in7)) (assert ( < in0 in8)) (assert ( < in0 in9)) (assert ( < in1 in2)) (assert ( < in1 in3)) (assert ( < in1 in4)) (assert ( < in1 in5)) (assert ( < in1 in6)) (assert ( < in1 in7)) (assert ( < in1 in8)) (assert ( < in1 in9)) (assert ( < in2 in3)) (assert ( < in2 in4)) (assert ( < in2 in5)) (assert ( < in2 in6)) (assert ( < in2 in7)) (assert ( < in2 in8)) (assert ( < in2 in9)) (assert ( < in3 in4)) (assert ( < in3 in5)) (assert ( < in3 in6)) (assert ( < in3 in7)) (assert ( < in3 in8)) (assert ( < in3 in9)) (assert ( < in4 in5)) (assert ( < in4 in6)) (assert ( < in4 in7)) (assert ( < in4 in8)) (assert ( < in4 in9)) (assert ( < in5 in6)) (assert ( < in5 in7)) (assert ( < in5 in8)) (assert ( < in5 in9)) (assert ( < in6 in7)) (assert ( < in6 in8)) (assert ( < in6 in9)) (assert ( < in7 in8)) (assert ( < in7 in9)) (assert ( < in8 in9))
(assert (not
(and (and (and (and (and  ( <  in0 in9)  ( <  in1 in8))  ( <  in2 in7))  ( <  in3 in6))  ( <  in4 in5)))
))
(check-sat)
(pop)
