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

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 95))  ( =  in0 45)) (not ( = in1 95)))  ( =  in1 45)) (not ( = in2 95)))  ( =  in2 45)) (not ( = in3 95)))  ( =  in3 45)) (not ( = in4 95)))  ( =  in4 45)) (not ( = in5 95)))  ( =  in5 45)) (not ( = in6 95)))  ( =  in6 45)) (not ( = in7 95)))  ( =  in7 45)) (not ( = in8 95)))  ( =  in8 45)) (not ( = in9 95)))  ( =  in9 45)) (not ( = in10 95)))  ( =  in10 45)) (not ( = in11 95)))  ( =  in11 45)) (not ( = in12 95)))  ( =  in12 45)) (not ( = in13 95)))  ( =  in13 45)))
(pop)

; Generated constraints (B):
(push)
(assert (and (and (not ( = in13 95))  ( =  in13 45)) (and (and (not ( = in12 95))  ( =  in12 45)) (and (and (not ( = in11 95))  ( =  in11 45)) (and (and (not ( = in10 95))  ( =  in10 45)) (and (and (not ( = in9 95))  ( =  in9 45)) (and (and (not ( = in8 95))  ( =  in8 45)) (and (and (not ( = in7 95))  ( =  in7 45)) (and (and (not ( = in6 95))  ( =  in6 45)) (and (and (not ( = in5 95))  ( =  in5 45)) (and (and (not ( = in4 95))  ( =  in4 45)) (and (and (not ( = in3 95))  ( =  in3 45)) (and (and (not ( = in2 95))  ( =  in2 45)) (and (and (not ( = in1 95))  ( =  in1 45)) (and (and (not ( = in0 95))  ( =  in0 45)) true)))))))))))))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 95))  ( =  in0 45)) (not ( = in1 95)))  ( =  in1 45)) (not ( = in2 95)))  ( =  in2 45)) (not ( = in3 95)))  ( =  in3 45)) (not ( = in4 95)))  ( =  in4 45)) (not ( = in5 95)))  ( =  in5 45)) (not ( = in6 95)))  ( =  in6 45)) (not ( = in7 95)))  ( =  in7 45)) (not ( = in8 95)))  ( =  in8 45)) (not ( = in9 95)))  ( =  in9 45)) (not ( = in10 95)))  ( =  in10 45)) (not ( = in11 95)))  ( =  in11 45)) (not ( = in12 95)))  ( =  in12 45)) (not ( = in13 95)))  ( =  in13 45)))
(assert (not
(and (and (and (not ( = in13 95))  ( =  in13 45)) (and (and (not ( = in12 95))  ( =  in12 45)) (and (and (not ( = in11 95))  ( =  in11 45)) (and (and (not ( = in10 95))  ( =  in10 45)) (and (and (not ( = in9 95))  ( =  in9 45)) (and (and (not ( = in8 95))  ( =  in8 45)) (and (and (not ( = in7 95))  ( =  in7 45)) (and (and (not ( = in6 95))  ( =  in6 45)) (and (and (not ( = in5 95))  ( =  in5 45)) (and (and (not ( = in4 95))  ( =  in4 45)) (and (and (not ( = in3 95))  ( =  in3 45)) (and (and (not ( = in2 95))  ( =  in2 45)) (and (and (not ( = in1 95))  ( =  in1 45)) (and (and (not ( = in0 95))  ( =  in0 45)) true)))))))))))))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (and (not ( = in13 95))  ( =  in13 45)) (and (and (not ( = in12 95))  ( =  in12 45)) (and (and (not ( = in11 95))  ( =  in11 45)) (and (and (not ( = in10 95))  ( =  in10 45)) (and (and (not ( = in9 95))  ( =  in9 45)) (and (and (not ( = in8 95))  ( =  in8 45)) (and (and (not ( = in7 95))  ( =  in7 45)) (and (and (not ( = in6 95))  ( =  in6 45)) (and (and (not ( = in5 95))  ( =  in5 45)) (and (and (not ( = in4 95))  ( =  in4 45)) (and (and (not ( = in3 95))  ( =  in3 45)) (and (and (not ( = in2 95))  ( =  in2 45)) (and (and (not ( = in1 95))  ( =  in1 45)) (and (and (not ( = in0 95))  ( =  in0 45)) true)))))))))))))))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 95))  ( =  in0 45)) (not ( = in1 95)))  ( =  in1 45)) (not ( = in2 95)))  ( =  in2 45)) (not ( = in3 95)))  ( =  in3 45)) (not ( = in4 95)))  ( =  in4 45)) (not ( = in5 95)))  ( =  in5 45)) (not ( = in6 95)))  ( =  in6 45)) (not ( = in7 95)))  ( =  in7 45)) (not ( = in8 95)))  ( =  in8 45)) (not ( = in9 95)))  ( =  in9 45)) (not ( = in10 95)))  ( =  in10 45)) (not ( = in11 95)))  ( =  in11 45)) (not ( = in12 95)))  ( =  in12 45)) (not ( = in13 95)))  ( =  in13 45)))
))
(check-sat)
(pop)
