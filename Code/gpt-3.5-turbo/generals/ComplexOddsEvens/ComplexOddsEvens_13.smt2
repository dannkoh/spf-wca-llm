; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in11 Int)
(declare-const in10 Int)
(declare-const in9 Int)
(declare-const in12 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and  ( <  in11 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7))  ( <  in6 in8))  ( <  in7 in9))  ( <  in8 in10))  ( <  in9 in11))  ( <  in10 in12)))
(pop)

; Generated constraints (B):
(push)
(assert (and ( < in1 in0) ( < in2 in0) ( < in3 in0) ( < in4 in0) ( < in5 in0) ( < in6 in0) ( < in7 in0) ( < in8 in0) ( < in9 in0) ( < in10 in0) ( < in11 in0) ( < in12 in0) ) (and ( < in0 in1) ( < in2 in1) ( < in3 in1) ( < in4 in1) ( < in5 in1) ( < in6 in1) ( < in7 in1) ( < in8 in1) ( < in9 in1) ( < in10 in1) ( < in11 in1) ( < in12 in1) ) (and ( < in0 in2) ( < in1 in2) ( < in3 in2) ( < in4 in2) ( < in5 in2) ( < in6 in2) ( < in7 in2) ( < in8 in2) ( < in9 in2) ( < in10 in2) ( < in11 in2) ( < in12 in2) ) (and ( < in0 in3) ( < in1 in3) ( < in2 in3) ( < in4 in3) ( < in5 in3) ( < in6 in3) ( < in7 in3) ( < in8 in3) ( < in9 in3) ( < in10 in3) ( < in11 in3) ( < in12 in3) ) (and ( < in0 in4) ( < in1 in4) ( < in2 in4) ( < in3 in4) ( < in5 in4) ( < in6 in4) ( < in7 in4) ( < in8 in4) ( < in9 in4) ( < in10 in4) ( < in11 in4) ( < in12 in4) ) (and ( < in0 in5) ( < in1 in5) ( < in2 in5) ( < in3 in5) ( < in4 in5) ( < in6 in5) ( < in7 in5) ( < in8 in5) ( < in9 in5) ( < in10 in5) ( < in11 in5) ( < in12 in5) ) (and ( < in0 in6) ( < in1 in6) ( < in2 in6) ( < in3 in6) ( < in4 in6) ( < in5 in6) ( < in7 in6) ( < in8 in6) ( < in9 in6) ( < in10 in6) ( < in11 in6) ( < in12 in6) ) (and ( < in0 in7) ( < in1 in7) ( < in2 in7) ( < in3 in7) ( < in4 in7) ( < in5 in7) ( < in6 in7) ( < in8 in7) ( < in9 in7) ( < in10 in7) ( < in11 in7) ( < in12 in7) ) (and ( < in0 in8) ( < in1 in8) ( < in2 in8) ( < in3 in8) ( < in4 in8) ( < in5 in8) ( < in6 in8) ( < in7 in8) ( < in9 in8) ( < in10 in8) ( < in11 in8) ( < in12 in8) ) (and ( < in0 in9) ( < in1 in9) ( < in2 in9) ( < in3 in9) ( < in4 in9) ( < in5 in9) ( < in6 in9) ( < in7 in9) ( < in8 in9) ( < in10 in9) ( < in11 in9) ( < in12 in9) ) (and ( < in0 in10) ( < in1 in10) ( < in2 in10) ( < in3 in10) ( < in4 in10) ( < in5 in10) ( < in6 in10) ( < in7 in10) ( < in8 in10) ( < in9 in10) ( < in11 in10) ( < in12 in10) ) (and ( < in0 in11) ( < in1 in11) ( < in2 in11) ( < in3 in11) ( < in4 in11) ( < in5 in11) ( < in6 in11) ( < in7 in11) ( < in8 in11) ( < in9 in11) ( < in10 in11) ( < in12 in11) ) (and ( < in0 in12) ( < in1 in12) ( < in2 in12) ( < in3 in12) ( < in4 in12) ( < in5 in12) ( < in6 in12) ( < in7 in12) ( < in8 in12) ( < in9 in12) ( < in10 in12) ( < in11 in12) ))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and  ( <  in11 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7))  ( <  in6 in8))  ( <  in7 in9))  ( <  in8 in10))  ( <  in9 in11))  ( <  in10 in12)))
(assert (not
(and (and ( < in1 in0) ( < in2 in0) ( < in3 in0) ( < in4 in0) ( < in5 in0) ( < in6 in0) ( < in7 in0) ( < in8 in0) ( < in9 in0) ( < in10 in0) ( < in11 in0) ( < in12 in0) ) (and ( < in0 in1) ( < in2 in1) ( < in3 in1) ( < in4 in1) ( < in5 in1) ( < in6 in1) ( < in7 in1) ( < in8 in1) ( < in9 in1) ( < in10 in1) ( < in11 in1) ( < in12 in1) ) (and ( < in0 in2) ( < in1 in2) ( < in3 in2) ( < in4 in2) ( < in5 in2) ( < in6 in2) ( < in7 in2) ( < in8 in2) ( < in9 in2) ( < in10 in2) ( < in11 in2) ( < in12 in2) ) (and ( < in0 in3) ( < in1 in3) ( < in2 in3) ( < in4 in3) ( < in5 in3) ( < in6 in3) ( < in7 in3) ( < in8 in3) ( < in9 in3) ( < in10 in3) ( < in11 in3) ( < in12 in3) ) (and ( < in0 in4) ( < in1 in4) ( < in2 in4) ( < in3 in4) ( < in5 in4) ( < in6 in4) ( < in7 in4) ( < in8 in4) ( < in9 in4) ( < in10 in4) ( < in11 in4) ( < in12 in4) ) (and ( < in0 in5) ( < in1 in5) ( < in2 in5) ( < in3 in5) ( < in4 in5) ( < in6 in5) ( < in7 in5) ( < in8 in5) ( < in9 in5) ( < in10 in5) ( < in11 in5) ( < in12 in5) ) (and ( < in0 in6) ( < in1 in6) ( < in2 in6) ( < in3 in6) ( < in4 in6) ( < in5 in6) ( < in7 in6) ( < in8 in6) ( < in9 in6) ( < in10 in6) ( < in11 in6) ( < in12 in6) ) (and ( < in0 in7) ( < in1 in7) ( < in2 in7) ( < in3 in7) ( < in4 in7) ( < in5 in7) ( < in6 in7) ( < in8 in7) ( < in9 in7) ( < in10 in7) ( < in11 in7) ( < in12 in7) ) (and ( < in0 in8) ( < in1 in8) ( < in2 in8) ( < in3 in8) ( < in4 in8) ( < in5 in8) ( < in6 in8) ( < in7 in8) ( < in9 in8) ( < in10 in8) ( < in11 in8) ( < in12 in8) ) (and ( < in0 in9) ( < in1 in9) ( < in2 in9) ( < in3 in9) ( < in4 in9) ( < in5 in9) ( < in6 in9) ( < in7 in9) ( < in8 in9) ( < in10 in9) ( < in11 in9) ( < in12 in9) ) (and ( < in0 in10) ( < in1 in10) ( < in2 in10) ( < in3 in10) ( < in4 in10) ( < in5 in10) ( < in6 in10) ( < in7 in10) ( < in8 in10) ( < in9 in10) ( < in11 in10) ( < in12 in10) ) (and ( < in0 in11) ( < in1 in11) ( < in2 in11) ( < in3 in11) ( < in4 in11) ( < in5 in11) ( < in6 in11) ( < in7 in11) ( < in8 in11) ( < in9 in11) ( < in10 in11) ( < in12 in11) ) (and ( < in0 in12) ( < in1 in12) ( < in2 in12) ( < in3 in12) ( < in4 in12) ( < in5 in12) ( < in6 in12) ( < in7 in12) ( < in8 in12) ( < in9 in12) ( < in10 in12) ( < in11 in12) ))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and ( < in1 in0) ( < in2 in0) ( < in3 in0) ( < in4 in0) ( < in5 in0) ( < in6 in0) ( < in7 in0) ( < in8 in0) ( < in9 in0) ( < in10 in0) ( < in11 in0) ( < in12 in0) ) (and ( < in0 in1) ( < in2 in1) ( < in3 in1) ( < in4 in1) ( < in5 in1) ( < in6 in1) ( < in7 in1) ( < in8 in1) ( < in9 in1) ( < in10 in1) ( < in11 in1) ( < in12 in1) ) (and ( < in0 in2) ( < in1 in2) ( < in3 in2) ( < in4 in2) ( < in5 in2) ( < in6 in2) ( < in7 in2) ( < in8 in2) ( < in9 in2) ( < in10 in2) ( < in11 in2) ( < in12 in2) ) (and ( < in0 in3) ( < in1 in3) ( < in2 in3) ( < in4 in3) ( < in5 in3) ( < in6 in3) ( < in7 in3) ( < in8 in3) ( < in9 in3) ( < in10 in3) ( < in11 in3) ( < in12 in3) ) (and ( < in0 in4) ( < in1 in4) ( < in2 in4) ( < in3 in4) ( < in5 in4) ( < in6 in4) ( < in7 in4) ( < in8 in4) ( < in9 in4) ( < in10 in4) ( < in11 in4) ( < in12 in4) ) (and ( < in0 in5) ( < in1 in5) ( < in2 in5) ( < in3 in5) ( < in4 in5) ( < in6 in5) ( < in7 in5) ( < in8 in5) ( < in9 in5) ( < in10 in5) ( < in11 in5) ( < in12 in5) ) (and ( < in0 in6) ( < in1 in6) ( < in2 in6) ( < in3 in6) ( < in4 in6) ( < in5 in6) ( < in7 in6) ( < in8 in6) ( < in9 in6) ( < in10 in6) ( < in11 in6) ( < in12 in6) ) (and ( < in0 in7) ( < in1 in7) ( < in2 in7) ( < in3 in7) ( < in4 in7) ( < in5 in7) ( < in6 in7) ( < in8 in7) ( < in9 in7) ( < in10 in7) ( < in11 in7) ( < in12 in7) ) (and ( < in0 in8) ( < in1 in8) ( < in2 in8) ( < in3 in8) ( < in4 in8) ( < in5 in8) ( < in6 in8) ( < in7 in8) ( < in9 in8) ( < in10 in8) ( < in11 in8) ( < in12 in8) ) (and ( < in0 in9) ( < in1 in9) ( < in2 in9) ( < in3 in9) ( < in4 in9) ( < in5 in9) ( < in6 in9) ( < in7 in9) ( < in8 in9) ( < in10 in9) ( < in11 in9) ( < in12 in9) ) (and ( < in0 in10) ( < in1 in10) ( < in2 in10) ( < in3 in10) ( < in4 in10) ( < in5 in10) ( < in6 in10) ( < in7 in10) ( < in8 in10) ( < in9 in10) ( < in11 in10) ( < in12 in10) ) (and ( < in0 in11) ( < in1 in11) ( < in2 in11) ( < in3 in11) ( < in4 in11) ( < in5 in11) ( < in6 in11) ( < in7 in11) ( < in8 in11) ( < in9 in11) ( < in10 in11) ( < in12 in11) ) (and ( < in0 in12) ( < in1 in12) ( < in2 in12) ( < in3 in12) ( < in4 in12) ( < in5 in12) ( < in6 in12) ( < in7 in12) ( < in8 in12) ( < in9 in12) ( < in10 in12) ( < in11 in12) ))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and  ( <  in11 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7))  ( <  in6 in8))  ( <  in7 in9))  ( <  in8 in10))  ( <  in9 in11))  ( <  in10 in12)))
))
(check-sat)
(pop)
