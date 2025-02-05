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
(declare-const in13 Int)
(declare-const in12 Int)
(declare-const in15 Int)
(declare-const in14 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in15 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7))  ( <  in6 in8))  ( <  in7 in9))  ( <  in8 in10))  ( <  in9 in11))  ( <  in10 in12))  ( <  in11 in13))  ( <  in12 in14))  ( <  in13 in15)))
(pop)

; Generated constraints (B):
(push)
(assert (and (< in1 in0) (< in0 in2) (< in3 in0) (< in1 in3) (< in2 in4) (< in5 in0) (< in3 in5) (< in5 in0) (< in0 in2) (< in1 in3) (< in2 in4) (< in3 in5) (< in4 in6) (< in7 in0) (< in6 in8) (< in7 in0) (< in9 in0) (< in7 in9)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in15 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7))  ( <  in6 in8))  ( <  in7 in9))  ( <  in8 in10))  ( <  in9 in11))  ( <  in10 in12))  ( <  in11 in13))  ( <  in12 in14))  ( <  in13 in15)))
(assert (not
(and (and (< in1 in0) (< in0 in2) (< in3 in0) (< in1 in3) (< in2 in4) (< in5 in0) (< in3 in5) (< in5 in0) (< in0 in2) (< in1 in3) (< in2 in4) (< in3 in5) (< in4 in6) (< in7 in0) (< in6 in8) (< in7 in0) (< in9 in0) (< in7 in9)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (< in1 in0) (< in0 in2) (< in3 in0) (< in1 in3) (< in2 in4) (< in5 in0) (< in3 in5) (< in5 in0) (< in0 in2) (< in1 in3) (< in2 in4) (< in3 in5) (< in4 in6) (< in7 in0) (< in6 in8) (< in7 in0) (< in9 in0) (< in7 in9)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in15 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7))  ( <  in6 in8))  ( <  in7 in9))  ( <  in8 in10))  ( <  in9 in11))  ( <  in10 in12))  ( <  in11 in13))  ( <  in12 in14))  ( <  in13 in15)))
))
(check-sat)
(pop)
