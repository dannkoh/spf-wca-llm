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
(declare-const in14 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10)))  ( =  in12 ( +  in10 in11)))  ( =  in13 ( +  in11 in12)))  ( =  in14 ( +  in12 in13))))
(pop)

; Generated constraints (B):
(push)
and(assert (= in2 (+ in1 in0))and (assert (= in3 (+ in2 in1))and (assert (= in4 (+ in3 in2))and (assert (= in5 (+ in4 in3))and (assert (= in6 (+ in5 in4))and (assert (= in7 (+ in6 in5))and (assert (= in8 (+ in7 in6))and (assert (= in9 (+ in8 in7))and (assert (= in10 (+ in9 in8))and (assert (= in11 (+ in10 in9))and (assert (= in12 (+ in11 in10))and (assert (= in13 (+ in12 in11))and (assert (= in14 (+ in13 in12))and (assert (= in15 (+ in14 in13))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10)))  ( =  in12 ( +  in10 in11)))  ( =  in13 ( +  in11 in12)))  ( =  in14 ( +  in12 in13))))
(assert (not
(and )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
and(assert (= in2 (+ in1 in0))and (assert (= in3 (+ in2 in1))and (assert (= in4 (+ in3 in2))and (assert (= in5 (+ in4 in3))and (assert (= in6 (+ in5 in4))and (assert (= in7 (+ in6 in5))and (assert (= in8 (+ in7 in6))and (assert (= in9 (+ in8 in7))and (assert (= in10 (+ in9 in8))and (assert (= in11 (+ in10 in9))and (assert (= in12 (+ in11 in10))and (assert (= in13 (+ in12 in11))and (assert (= in14 (+ in13 in12))and (assert (= in15 (+ in14 in13))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10)))  ( =  in12 ( +  in10 in11)))  ( =  in13 ( +  in11 in12)))  ( =  in14 ( +  in12 in13))))
))
(check-sat)
(pop)
