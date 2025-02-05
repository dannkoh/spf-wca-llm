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
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10)))  ( =  in12 ( +  in10 in11)))  ( =  in13 ( +  in11 in12)))  ( =  in14 ( +  in12 in13)))  ( =  in15 ( +  in13 in14)))  ( =  in16 ( +  in14 in15)))  ( =  in17 ( +  in15 in16)))  ( =  in18 ( +  in16 in17)))  ( =  in19 ( +  in17 in18)))  ( =  in20 ( +  in18 in19)))  ( =  in21 ( +  in19 in20)))  ( =  in22 ( +  in20 in21)))  ( =  in23 ( +  in21 in22)))  ( =  in24 ( +  in22 in23)))  ( =  in25 ( +  in23 in24))))
(pop)

; Generated constraints (B):
(push)
(assert (and (= in2 (+ in0 in1)) (= in3 (+ in2 in1)) (= in4 (+ in3 in2)) (= in5 (+ in4 in3)) (= in6 (+ in5 in4)) (= in7 (+ in6 in5)) (= in8 (+ in7 in6)) (= in9 (+ in8 in7)) (= in10 (+ in9 in8)) (= in11 (+ in10 in9)) (= in12 (+ in11 in10)) (= in13 (+ in12 in11)) (= in14 (+ in13 in12)) (= in15 (+ in14 in13)) (= in16 (+ in15 in14)) (= in17 (+ in16 in15)) (= in18 (+ in17 in16)) (= in19 (+ in18 in17)) (= in20 (+ in19 in18)) (= in21 (+ in20 in19)) (= in22 (+ in21 in20)) (= in23 (+ in22 in21)) (= in24 (+ in23 in22)) (= in25 (+ in24 in23))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10)))  ( =  in12 ( +  in10 in11)))  ( =  in13 ( +  in11 in12)))  ( =  in14 ( +  in12 in13)))  ( =  in15 ( +  in13 in14)))  ( =  in16 ( +  in14 in15)))  ( =  in17 ( +  in15 in16)))  ( =  in18 ( +  in16 in17)))  ( =  in19 ( +  in17 in18)))  ( =  in20 ( +  in18 in19)))  ( =  in21 ( +  in19 in20)))  ( =  in22 ( +  in20 in21)))  ( =  in23 ( +  in21 in22)))  ( =  in24 ( +  in22 in23)))  ( =  in25 ( +  in23 in24))))
(assert (not
(and (and (= in2 (+ in0 in1)) (= in3 (+ in2 in1)) (= in4 (+ in3 in2)) (= in5 (+ in4 in3)) (= in6 (+ in5 in4)) (= in7 (+ in6 in5)) (= in8 (+ in7 in6)) (= in9 (+ in8 in7)) (= in10 (+ in9 in8)) (= in11 (+ in10 in9)) (= in12 (+ in11 in10)) (= in13 (+ in12 in11)) (= in14 (+ in13 in12)) (= in15 (+ in14 in13)) (= in16 (+ in15 in14)) (= in17 (+ in16 in15)) (= in18 (+ in17 in16)) (= in19 (+ in18 in17)) (= in20 (+ in19 in18)) (= in21 (+ in20 in19)) (= in22 (+ in21 in20)) (= in23 (+ in22 in21)) (= in24 (+ in23 in22)) (= in25 (+ in24 in23))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (= in2 (+ in0 in1)) (= in3 (+ in2 in1)) (= in4 (+ in3 in2)) (= in5 (+ in4 in3)) (= in6 (+ in5 in4)) (= in7 (+ in6 in5)) (= in8 (+ in7 in6)) (= in9 (+ in8 in7)) (= in10 (+ in9 in8)) (= in11 (+ in10 in9)) (= in12 (+ in11 in10)) (= in13 (+ in12 in11)) (= in14 (+ in13 in12)) (= in15 (+ in14 in13)) (= in16 (+ in15 in14)) (= in17 (+ in16 in15)) (= in18 (+ in17 in16)) (= in19 (+ in18 in17)) (= in20 (+ in19 in18)) (= in21 (+ in20 in19)) (= in22 (+ in21 in20)) (= in23 (+ in22 in21)) (= in24 (+ in23 in22)) (= in25 (+ in24 in23))))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10)))  ( =  in12 ( +  in10 in11)))  ( =  in13 ( +  in11 in12)))  ( =  in14 ( +  in12 in13)))  ( =  in15 ( +  in13 in14)))  ( =  in16 ( +  in14 in15)))  ( =  in17 ( +  in15 in16)))  ( =  in18 ( +  in16 in17)))  ( =  in19 ( +  in17 in18)))  ( =  in20 ( +  in18 in19)))  ( =  in21 ( +  in19 in20)))  ( =  in22 ( +  in20 in21)))  ( =  in23 ( +  in21 in22)))  ( =  in24 ( +  in22 in23)))  ( =  in25 ( +  in23 in24))))
))
(check-sat)
(pop)
