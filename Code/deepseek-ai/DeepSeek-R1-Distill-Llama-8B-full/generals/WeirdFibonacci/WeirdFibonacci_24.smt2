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
(declare-const in23 Int)
(declare-const in12 Int)
(declare-const in15 Int)
(declare-const in14 Int)
(declare-const in17 Int)
(declare-const in16 Int)
(declare-const in19 Int)
(declare-const in18 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10)))  ( =  in12 ( +  in10 in11)))  ( =  in13 ( +  in11 in12)))  ( =  in14 ( +  in12 in13)))  ( =  in15 ( +  in13 in14)))  ( =  in16 ( +  in14 in15)))  ( =  in17 ( +  in15 in16)))  ( =  in18 ( +  in16 in17)))  ( =  in19 ( +  in17 in18)))  ( =  in20 ( +  in18 in19)))  ( =  in21 ( +  in19 in20)))  ( =  in22 ( +  in20 in21)))  ( =  in23 ( +  in21 in22))))
(pop)

; Generated constraints (B):
(push)
and(assert (= in2 (+ in1 in0))and (assert (= in3 (+ in2 in1))and (assert (= in4 (+ in3 in2))and (assert (= in5 (+ in4 in3))and (assert (= in6 (+ in5 in4))and (assert (= in7 (+ in6 in5))and (assert (= in8 (+ in7 in6))and (assert (= in9 (+ in8 in7))and (assert (= in10 (+ in9 in8))and (assert (= in11 (+ in10 in9))and (assert (= in12 (+ in11 in10))and (assert (= in13 (+ in12 in11))and (assert (= in14 (+ in13 in12))and (assert (= in15 (+ in14 in13))and (assert (= in16 (+ in15 in14))and (assert (= in17 (+ in16 in15))and (assert (= in18 (+ in17 in16))and (assert (= in19 (+ in18 in17))and (assert (= in20 (+ in19 in18))and (assert (= in21 (+ in20 in19))and (assert (= in22 (+ in21 in20))and (assert (= in23 (+ in22 in21))and (assert (= in24 (+ in23 in22))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10)))  ( =  in12 ( +  in10 in11)))  ( =  in13 ( +  in11 in12)))  ( =  in14 ( +  in12 in13)))  ( =  in15 ( +  in13 in14)))  ( =  in16 ( +  in14 in15)))  ( =  in17 ( +  in15 in16)))  ( =  in18 ( +  in16 in17)))  ( =  in19 ( +  in17 in18)))  ( =  in20 ( +  in18 in19)))  ( =  in21 ( +  in19 in20)))  ( =  in22 ( +  in20 in21)))  ( =  in23 ( +  in21 in22))))
(assert (not
(and )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
and(assert (= in2 (+ in1 in0))and (assert (= in3 (+ in2 in1))and (assert (= in4 (+ in3 in2))and (assert (= in5 (+ in4 in3))and (assert (= in6 (+ in5 in4))and (assert (= in7 (+ in6 in5))and (assert (= in8 (+ in7 in6))and (assert (= in9 (+ in8 in7))and (assert (= in10 (+ in9 in8))and (assert (= in11 (+ in10 in9))and (assert (= in12 (+ in11 in10))and (assert (= in13 (+ in12 in11))and (assert (= in14 (+ in13 in12))and (assert (= in15 (+ in14 in13))and (assert (= in16 (+ in15 in14))and (assert (= in17 (+ in16 in15))and (assert (= in18 (+ in17 in16))and (assert (= in19 (+ in18 in17))and (assert (= in20 (+ in19 in18))and (assert (= in21 (+ in20 in19))and (assert (= in22 (+ in21 in20))and (assert (= in23 (+ in22 in21))and (assert (= in24 (+ in23 in22))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10)))  ( =  in12 ( +  in10 in11)))  ( =  in13 ( +  in11 in12)))  ( =  in14 ( +  in12 in13)))  ( =  in15 ( +  in13 in14)))  ( =  in16 ( +  in14 in15)))  ( =  in17 ( +  in15 in16)))  ( =  in18 ( +  in16 in17)))  ( =  in19 ( +  in17 in18)))  ( =  in20 ( +  in18 in19)))  ( =  in21 ( +  in19 in20)))  ( =  in22 ( +  in20 in21)))  ( =  in23 ( +  in21 in22))))
))
(check-sat)
(pop)
