; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in11 Int)
(declare-const in9 Int)
(declare-const in10 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10))))
(pop)

; Generated constraints (B):
(push)
(and (= in2 (+ in0 in1)) (= in3 (+ in1 in2))) (and (= in3 (+ in1 in2)) (= in4 (+ in2 in3))) (and (= in4 (+ in2 in3)) (= in5 (+ in3 in4))) (and (= in5 (+ in3 in4)) (= in6 (+ in4 in5))) (and (= in6 (+ in4 in5)) (= in7 (+ in5 in6))) (and (= in7 (+ in5 in6)) (= in8 (+ in6 in7))) (and (= in8 (+ in6 in7)) (= in9 (+ in7 in8))) (and (= in9 (+ in7 in8)) (= in10 (+ in8 in9))) (and (= in10 (+ in8 in9)) (= in11 (+ in9 in10))) (and (= in11 (+ in9 in10)) (= in12 (+ in10 in11)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10))))
(assert (not
(and )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(and (= in2 (+ in0 in1)) (= in3 (+ in1 in2))) (and (= in3 (+ in1 in2)) (= in4 (+ in2 in3))) (and (= in4 (+ in2 in3)) (= in5 (+ in3 in4))) (and (= in5 (+ in3 in4)) (= in6 (+ in4 in5))) (and (= in6 (+ in4 in5)) (= in7 (+ in5 in6))) (and (= in7 (+ in5 in6)) (= in8 (+ in6 in7))) (and (= in8 (+ in6 in7)) (= in9 (+ in7 in8))) (and (= in9 (+ in7 in8)) (= in10 (+ in8 in9))) (and (= in10 (+ in8 in9)) (= in11 (+ in9 in10))) (and (= in11 (+ in9 in10)) (= in12 (+ in10 in11)))
(assert (not
(and (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10))))
))
(check-sat)
(pop)
