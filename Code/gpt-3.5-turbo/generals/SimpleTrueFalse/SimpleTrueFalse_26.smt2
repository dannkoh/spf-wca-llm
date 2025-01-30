; Combined SMT for checking equivalence
; Original constants:
(declare-const in20 Int)
(declare-const in22 Int)
(declare-const in21 Int)
(declare-const in24 Int)
(declare-const in23 Int)
(declare-const in25 Int)
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
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0))  ( =  in6 1))  ( =  in7 0))  ( =  in8 1))  ( =  in9 0))  ( =  in10 1))  ( =  in11 0))  ( =  in12 1))  ( =  in13 0))  ( =  in14 1))  ( =  in15 0))  ( =  in16 1))  ( =  in17 0))  ( =  in18 1))  ( =  in19 0))  ( =  in20 1))  ( =  in21 0))  ( =  in22 1))  ( =  in23 0))  ( =  in24 1))  ( =  in25 0)))
(pop)

; Generated constraints (B):
(push)
(assert (and (= in0 1) (= in1 0) (= in1 (ite (= in0 1) 0 1)) (= in2 1) (= in2 (ite (= in1 1) 0 1)) (= in3 0) (= in3 (ite (= in2 1) 0 1)) (= in4 1) (= in4 (ite (= in3 1) 0 1)) (= in5 0) (= in5 (ite (= in4 1) 0 1)) (= in6 1) (= in6 (ite (= in5 1) 0 1)) (= in7 0) (= in7 (ite (= in6 1) 0 1)) (= in8 1) (= in8 (ite (= in7 1) 0 1)) (= in9 0) (= in9 (ite (= in8 1) 0 1)) (= in10 1) (= in10 (ite (= in9 1) 0 1)) (= in11 0) (= in11 (ite (= in10 1) 0 1)) (= in12 1) (= in12 (ite (= in11 1) 0 1)) (= in13 0) (= in13 (ite (= in12 1) 0 1)) (= in14 1) (= in14 (ite (= in13 1) 0 1)) (= in15 0) (= in15 (ite (= in14 1) 0 1)) (= in16 1) (= in16 (ite (= in15 1) 0 1)) (= in17 0) (= in17 (ite (= in16 1) 0 1)) (= in18 1) (= in18 (ite (= in17 1) 0 1)) (= in19 0) (= in19 (ite (= in18 1) 0 1)) (= in20 1) (= in20 (ite (= in19 1) 0 1)) (= in21 0) (= in21 (ite (= in20 1) 0 1)) (= in22 1) (= in22 (ite (= in21 1) 0 1)) (= in23 0) (= in23 (ite (= in22 1) 0 1)) (= in24 1) (= in24 (ite (= in23 1) 0 1)) (= in25 0) (= in25 (ite (= in24 1) 0 1))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0))  ( =  in6 1))  ( =  in7 0))  ( =  in8 1))  ( =  in9 0))  ( =  in10 1))  ( =  in11 0))  ( =  in12 1))  ( =  in13 0))  ( =  in14 1))  ( =  in15 0))  ( =  in16 1))  ( =  in17 0))  ( =  in18 1))  ( =  in19 0))  ( =  in20 1))  ( =  in21 0))  ( =  in22 1))  ( =  in23 0))  ( =  in24 1))  ( =  in25 0)))
(assert (not
(and (and (= in0 1) (= in1 0) (= in1 (ite (= in0 1) 0 1)) (= in2 1) (= in2 (ite (= in1 1) 0 1)) (= in3 0) (= in3 (ite (= in2 1) 0 1)) (= in4 1) (= in4 (ite (= in3 1) 0 1)) (= in5 0) (= in5 (ite (= in4 1) 0 1)) (= in6 1) (= in6 (ite (= in5 1) 0 1)) (= in7 0) (= in7 (ite (= in6 1) 0 1)) (= in8 1) (= in8 (ite (= in7 1) 0 1)) (= in9 0) (= in9 (ite (= in8 1) 0 1)) (= in10 1) (= in10 (ite (= in9 1) 0 1)) (= in11 0) (= in11 (ite (= in10 1) 0 1)) (= in12 1) (= in12 (ite (= in11 1) 0 1)) (= in13 0) (= in13 (ite (= in12 1) 0 1)) (= in14 1) (= in14 (ite (= in13 1) 0 1)) (= in15 0) (= in15 (ite (= in14 1) 0 1)) (= in16 1) (= in16 (ite (= in15 1) 0 1)) (= in17 0) (= in17 (ite (= in16 1) 0 1)) (= in18 1) (= in18 (ite (= in17 1) 0 1)) (= in19 0) (= in19 (ite (= in18 1) 0 1)) (= in20 1) (= in20 (ite (= in19 1) 0 1)) (= in21 0) (= in21 (ite (= in20 1) 0 1)) (= in22 1) (= in22 (ite (= in21 1) 0 1)) (= in23 0) (= in23 (ite (= in22 1) 0 1)) (= in24 1) (= in24 (ite (= in23 1) 0 1)) (= in25 0) (= in25 (ite (= in24 1) 0 1))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (= in0 1) (= in1 0) (= in1 (ite (= in0 1) 0 1)) (= in2 1) (= in2 (ite (= in1 1) 0 1)) (= in3 0) (= in3 (ite (= in2 1) 0 1)) (= in4 1) (= in4 (ite (= in3 1) 0 1)) (= in5 0) (= in5 (ite (= in4 1) 0 1)) (= in6 1) (= in6 (ite (= in5 1) 0 1)) (= in7 0) (= in7 (ite (= in6 1) 0 1)) (= in8 1) (= in8 (ite (= in7 1) 0 1)) (= in9 0) (= in9 (ite (= in8 1) 0 1)) (= in10 1) (= in10 (ite (= in9 1) 0 1)) (= in11 0) (= in11 (ite (= in10 1) 0 1)) (= in12 1) (= in12 (ite (= in11 1) 0 1)) (= in13 0) (= in13 (ite (= in12 1) 0 1)) (= in14 1) (= in14 (ite (= in13 1) 0 1)) (= in15 0) (= in15 (ite (= in14 1) 0 1)) (= in16 1) (= in16 (ite (= in15 1) 0 1)) (= in17 0) (= in17 (ite (= in16 1) 0 1)) (= in18 1) (= in18 (ite (= in17 1) 0 1)) (= in19 0) (= in19 (ite (= in18 1) 0 1)) (= in20 1) (= in20 (ite (= in19 1) 0 1)) (= in21 0) (= in21 (ite (= in20 1) 0 1)) (= in22 1) (= in22 (ite (= in21 1) 0 1)) (= in23 0) (= in23 (ite (= in22 1) 0 1)) (= in24 1) (= in24 (ite (= in23 1) 0 1)) (= in25 0) (= in25 (ite (= in24 1) 0 1))))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0))  ( =  in6 1))  ( =  in7 0))  ( =  in8 1))  ( =  in9 0))  ( =  in10 1))  ( =  in11 0))  ( =  in12 1))  ( =  in13 0))  ( =  in14 1))  ( =  in15 0))  ( =  in16 1))  ( =  in17 0))  ( =  in18 1))  ( =  in19 0))  ( =  in20 1))  ( =  in21 0))  ( =  in22 1))  ( =  in23 0))  ( =  in24 1))  ( =  in25 0)))
))
(check-sat)
(pop)
