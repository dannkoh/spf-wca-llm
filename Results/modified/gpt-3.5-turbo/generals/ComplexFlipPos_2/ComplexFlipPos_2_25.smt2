; Combined SMT for checking equivalence
; Original constants:
(declare-const in20 Int)
(declare-const in22 Int)
(declare-const in21 Int)
(declare-const in24 Int)
(declare-const in23 Int)
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
(declare-const in17 Int)
(declare-const in16 Int)
(declare-const in19 Int)
(declare-const in18 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in2 in5))  ( <  in3 in2))  ( <  in4 in7))  ( <  in5 in4))  ( <  in6 in9))  ( <  in7 in6))  ( <  in8 in11))  ( <  in9 in8))  ( <  in10 in13))  ( <  in11 in10))  ( <  in12 in15))  ( <  in13 in12))  ( <  in14 in17))  ( <  in15 in14))  ( <  in16 in19))  ( <  in17 in16))  ( <  in18 in21))  ( <  in19 in18))  ( <  in20 in23))  ( <  in21 in20))  ( <  in22 in24))  ( <  in23 in22)))
(pop)

; Generated constraints (B):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (< in1 in0) (< in0 in2)) (and (< in2 in1) (< in1 in3))) (and (< in3 in2) (< in2 in4))) (and (< in4 in3) (< in3 in5))) (and (< in5 in4) (< in4 in6))) (and (< in6 in5) (< in5 in7))) (and (< in7 in6) (< in6 in8))) (and (< in8 in7) (< in7 in9))) (and (< in9 in8) (< in8 in10))) (and (< in10 in9) (< in9 in11))) (and (< in11 in10) (< in10 in12))) (and (< in12 in11) (< in11 in13))) (and (< in13 in12) (< in12 in14))) (and (< in14 in13) (< in13 in15))) (and (< in15 in14) (< in14 in16))) (and (< in16 in15) (< in15 in17))) (and (< in17 in16) (< in16 in18))) (and (< in18 in17) (< in17 in19))) (and (< in19 in18) (< in18 in20))) (and (< in20 in19) (< in19 in21))) (and (< in21 in20) (< in20 in22))) (and (< in22 in21) (< in21 in23))) (and (< in23 in22) (< in22 in24))) (and (< in24 in23))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in2 in5))  ( <  in3 in2))  ( <  in4 in7))  ( <  in5 in4))  ( <  in6 in9))  ( <  in7 in6))  ( <  in8 in11))  ( <  in9 in8))  ( <  in10 in13))  ( <  in11 in10))  ( <  in12 in15))  ( <  in13 in12))  ( <  in14 in17))  ( <  in15 in14))  ( <  in16 in19))  ( <  in17 in16))  ( <  in18 in21))  ( <  in19 in18))  ( <  in20 in23))  ( <  in21 in20))  ( <  in22 in24))  ( <  in23 in22)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (< in1 in0) (< in0 in2)) (and (< in2 in1) (< in1 in3))) (and (< in3 in2) (< in2 in4))) (and (< in4 in3) (< in3 in5))) (and (< in5 in4) (< in4 in6))) (and (< in6 in5) (< in5 in7))) (and (< in7 in6) (< in6 in8))) (and (< in8 in7) (< in7 in9))) (and (< in9 in8) (< in8 in10))) (and (< in10 in9) (< in9 in11))) (and (< in11 in10) (< in10 in12))) (and (< in12 in11) (< in11 in13))) (and (< in13 in12) (< in12 in14))) (and (< in14 in13) (< in13 in15))) (and (< in15 in14) (< in14 in16))) (and (< in16 in15) (< in15 in17))) (and (< in17 in16) (< in16 in18))) (and (< in18 in17) (< in17 in19))) (and (< in19 in18) (< in18 in20))) (and (< in20 in19) (< in19 in21))) (and (< in21 in20) (< in20 in22))) (and (< in22 in21) (< in21 in23))) (and (< in23 in22) (< in22 in24))) (and (< in24 in23))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (< in1 in0) (< in0 in2)) (and (< in2 in1) (< in1 in3))) (and (< in3 in2) (< in2 in4))) (and (< in4 in3) (< in3 in5))) (and (< in5 in4) (< in4 in6))) (and (< in6 in5) (< in5 in7))) (and (< in7 in6) (< in6 in8))) (and (< in8 in7) (< in7 in9))) (and (< in9 in8) (< in8 in10))) (and (< in10 in9) (< in9 in11))) (and (< in11 in10) (< in10 in12))) (and (< in12 in11) (< in11 in13))) (and (< in13 in12) (< in12 in14))) (and (< in14 in13) (< in13 in15))) (and (< in15 in14) (< in14 in16))) (and (< in16 in15) (< in15 in17))) (and (< in17 in16) (< in16 in18))) (and (< in18 in17) (< in17 in19))) (and (< in19 in18) (< in18 in20))) (and (< in20 in19) (< in19 in21))) (and (< in21 in20) (< in20 in22))) (and (< in22 in21) (< in21 in23))) (and (< in23 in22) (< in22 in24))) (and (< in24 in23))))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in2 in5))  ( <  in3 in2))  ( <  in4 in7))  ( <  in5 in4))  ( <  in6 in9))  ( <  in7 in6))  ( <  in8 in11))  ( <  in9 in8))  ( <  in10 in13))  ( <  in11 in10))  ( <  in12 in15))  ( <  in13 in12))  ( <  in14 in17))  ( <  in15 in14))  ( <  in16 in19))  ( <  in17 in16))  ( <  in18 in21))  ( <  in19 in18))  ( <  in20 in23))  ( <  in21 in20))  ( <  in22 in24))  ( <  in23 in22)))
))
(check-sat)
(pop)
