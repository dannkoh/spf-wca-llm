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
(assert (and (and (and (and (and (and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in2 in5))  ( <  in3 in2))  ( <  in4 in7))  ( <  in5 in4))  ( <  in6 in9))  ( <  in7 in6))  ( <  in9 in8)))
(pop)

; Generated constraints (B):
(push)
(assert (< in2 in1))
(assert (< in3 in2))
(assert (< in4 in3))
(assert (< in5 in4))
(assert (< in6 in5))
(assert (< in7 in6))
(assert (< in8 in7))
(assert (< in9 in8))
(assert (< in10 in9))
(assert (< in0 in10))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in2 in5))  ( <  in3 in2))  ( <  in4 in7))  ( <  in5 in4))  ( <  in6 in9))  ( <  in7 in6))  ( <  in9 in8)))
(assert (not
(and (< in2 in1) (< in3 in2) (< in4 in3) (< in5 in4) (< in6 in5) (< in7 in6) (< in8 in7) (< in9 in8) (< in10 in9) (< in0 in10))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (< in2 in1))
(assert (< in3 in2))
(assert (< in4 in3))
(assert (< in5 in4))
(assert (< in6 in5))
(assert (< in7 in6))
(assert (< in8 in7))
(assert (< in9 in8))
(assert (< in10 in9))
(assert (< in0 in10))
(assert (not
(and (and (and (and (and (and (and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in2 in5))  ( <  in3 in2))  ( <  in4 in7))  ( <  in5 in4))  ( <  in6 in9))  ( <  in7 in6))  ( <  in9 in8)))
))
(check-sat)
(pop)
