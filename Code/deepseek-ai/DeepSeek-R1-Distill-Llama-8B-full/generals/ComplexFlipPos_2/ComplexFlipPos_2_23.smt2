; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in20 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in22 Int)
(declare-const in11 Int)
(declare-const in21 Int)
(declare-const in10 Int)
(declare-const in9 Int)
(declare-const in13 Int)
(declare-const in12 Int)
(declare-const in15 Int)
(declare-const in14 Int)
(declare-const in17 Int)
(declare-const in16 Int)
(declare-const in19 Int)
(declare-const in18 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in2 in5))  ( <  in3 in2))  ( <  in4 in7))  ( <  in5 in4))  ( <  in6 in9))  ( <  in7 in6))  ( <  in8 in11))  ( <  in9 in8))  ( <  in10 in13))  ( <  in11 in10))  ( <  in12 in15))  ( <  in13 in12))  ( <  in14 in17))  ( <  in15 in14))  ( <  in16 in19))  ( <  in17 in16))  ( <  in18 in21))  ( <  in19 in18))  ( <  in20 in22))  ( <  in21 in20)))
(pop)

; Generated constraints (B):
(push)
(assert (<= in0 in3))&& (assert (<= in1 in0))&& (assert (<= in2 in5))&& (assert (<= in3 in2))&& (assert (<= in4 in7))&& (assert (<= in5 in4))&& (assert (<= in6 in9))&& (assert (<= in7 in6))&& (assert (<= in8 in11))&& (assert (<= in9 in8))&& (assert (<= in10 in13))&& (assert (<= in11 in10))&& (assert (<= in12 in15))&& (assert (<= in13 in12))&& (assert (<= in14 in17))&& (assert (<= in15 in14))&& (assert (<= in16 in19))&& (assert (<= in17 in16))&& (assert (<= in18 in21))&& (assert (<= in19 in18))&& (assert (<= in20 in22))&& (assert (<= in21 in20))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in2 in5))  ( <  in3 in2))  ( <  in4 in7))  ( <  in5 in4))  ( <  in6 in9))  ( <  in7 in6))  ( <  in8 in11))  ( <  in9 in8))  ( <  in10 in13))  ( <  in11 in10))  ( <  in12 in15))  ( <  in13 in12))  ( <  in14 in17))  ( <  in15 in14))  ( <  in16 in19))  ( <  in17 in16))  ( <  in18 in21))  ( <  in19 in18))  ( <  in20 in22))  ( <  in21 in20)))
(assert (not
(and (<= in0 in3))&& (assert (<= in1 in0))&& (assert (<= in2 in5))&& (assert (<= in3 in2))&& (assert (<= in4 in7))&& (assert (<= in5 in4))&& (assert (<= in6 in9))&& (assert (<= in7 in6))&& (assert (<= in8 in11))&& (assert (<= in9 in8))&& (assert (<= in10 in13))&& (assert (<= in11 in10))&& (assert (<= in12 in15))&& (assert (<= in13 in12))&& (assert (<= in14 in17))&& (assert (<= in15 in14))&& (assert (<= in16 in19))&& (assert (<= in17 in16))&& (assert (<= in18 in21))&& (assert (<= in19 in18))&& (assert (<= in20 in22))&& (assert (<= in21 in20))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (<= in0 in3))&& (assert (<= in1 in0))&& (assert (<= in2 in5))&& (assert (<= in3 in2))&& (assert (<= in4 in7))&& (assert (<= in5 in4))&& (assert (<= in6 in9))&& (assert (<= in7 in6))&& (assert (<= in8 in11))&& (assert (<= in9 in8))&& (assert (<= in10 in13))&& (assert (<= in11 in10))&& (assert (<= in12 in15))&& (assert (<= in13 in12))&& (assert (<= in14 in17))&& (assert (<= in15 in14))&& (assert (<= in16 in19))&& (assert (<= in17 in16))&& (assert (<= in18 in21))&& (assert (<= in19 in18))&& (assert (<= in20 in22))&& (assert (<= in21 in20))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in2 in5))  ( <  in3 in2))  ( <  in4 in7))  ( <  in5 in4))  ( <  in6 in9))  ( <  in7 in6))  ( <  in8 in11))  ( <  in9 in8))  ( <  in10 in13))  ( <  in11 in10))  ( <  in12 in15))  ( <  in13 in12))  ( <  in14 in17))  ( <  in15 in14))  ( <  in16 in19))  ( <  in17 in16))  ( <  in18 in21))  ( <  in19 in18))  ( <  in20 in22))  ( <  in21 in20)))
))
(check-sat)
(pop)
