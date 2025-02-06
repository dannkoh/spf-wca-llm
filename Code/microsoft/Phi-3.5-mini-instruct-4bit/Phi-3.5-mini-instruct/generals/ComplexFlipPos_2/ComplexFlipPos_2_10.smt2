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
(assert (not (< in0 in1)))(assert (and (< in1 in2))(assert (and (< in2 in3) (< in2 in4))(assert (and (< in3 in4) (< in3 in5) (< in3 in6))(assert (and (< in4 in5) (< in4 in6) (< in4 in7) (< in4 in8))(assert (and (< in5 in6) (< in5 in7) (< in5 in8) (< in5 in9) (< in5 in10))(assert (and (< in6 in7) (< in6 in8) (< in6 in9) (< in6 in10) (< in6 in11) (< in6 in12))(assert (and (< in7 in8) (< in7 in9) (< in7 in10) (< in7 in11) (< in7 in12) (< in7 in13) (< in7 in14))(assert (and (< in8 in9) (< in8 in10) (< in8 in11) (< in8 in12) (< in8 in13) (< in8 in14) (< in8 in15) (< in8 in16))(assert (and (< in9 in10) (< in9 in11) (< in9 in12) (< in9 in13) (< in9 in14) (< in9 in15) (< in9 in16) (< in9 in17) (< in9 in18))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in2 in5))  ( <  in3 in2))  ( <  in4 in7))  ( <  in5 in4))  ( <  in6 in9))  ( <  in7 in6))  ( <  in9 in8)))
(assert (not
(and (not (< in0 in1)))(assert (and (< in1 in2))(assert (and (< in2 in3) (< in2 in4))(assert (and (< in3 in4) (< in3 in5) (< in3 in6))(assert (and (< in4 in5) (< in4 in6) (< in4 in7) (< in4 in8))(assert (and (< in5 in6) (< in5 in7) (< in5 in8) (< in5 in9) (< in5 in10))(assert (and (< in6 in7) (< in6 in8) (< in6 in9) (< in6 in10) (< in6 in11) (< in6 in12))(assert (and (< in7 in8) (< in7 in9) (< in7 in10) (< in7 in11) (< in7 in12) (< in7 in13) (< in7 in14))(assert (and (< in8 in9) (< in8 in10) (< in8 in11) (< in8 in12) (< in8 in13) (< in8 in14) (< in8 in15) (< in8 in16))(assert (and (< in9 in10) (< in9 in11) (< in9 in12) (< in9 in13) (< in9 in14) (< in9 in15) (< in9 in16) (< in9 in17) (< in9 in18))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (not (< in0 in1)))(assert (and (< in1 in2))(assert (and (< in2 in3) (< in2 in4))(assert (and (< in3 in4) (< in3 in5) (< in3 in6))(assert (and (< in4 in5) (< in4 in6) (< in4 in7) (< in4 in8))(assert (and (< in5 in6) (< in5 in7) (< in5 in8) (< in5 in9) (< in5 in10))(assert (and (< in6 in7) (< in6 in8) (< in6 in9) (< in6 in10) (< in6 in11) (< in6 in12))(assert (and (< in7 in8) (< in7 in9) (< in7 in10) (< in7 in11) (< in7 in12) (< in7 in13) (< in7 in14))(assert (and (< in8 in9) (< in8 in10) (< in8 in11) (< in8 in12) (< in8 in13) (< in8 in14) (< in8 in15) (< in8 in16))(assert (and (< in9 in10) (< in9 in11) (< in9 in12) (< in9 in13) (< in9 in14) (< in9 in15) (< in9 in16) (< in9 in17) (< in9 in18))
(assert (not
(and (and (and (and (and (and (and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in2 in5))  ( <  in3 in2))  ( <  in4 in7))  ( <  in5 in4))  ( <  in6 in9))  ( <  in7 in6))  ( <  in9 in8)))
))
(check-sat)
(pop)
