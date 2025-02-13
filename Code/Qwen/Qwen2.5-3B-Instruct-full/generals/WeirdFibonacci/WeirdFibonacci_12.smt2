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
(assert (<= in0 100))
(assert (= in1 in0))
(assert (<= in2 100))
(assert (= in2 ( +  in1 in0)))
(assert (<= in3 100))
(assert (= in3 ( +  in2 in1)))
(assert (<= in4 100))
(assert (= in4 ( +  in3 in2)))
(assert (<= in5 100))
(assert (= in5 ( +  in4 in3)))
(assert (<= in6 100))
(assert (= in6 ( +  in5 in4)))
(assert (<= in7 100))
(assert (= in7 ( +  in6 in5)))
(assert (<= in8 100))
(assert (= in8 ( +  in7 in6)))
(assert (<= in9 100))
(assert (= in9 ( +  in8 in7)))
(assert (<= in10 100))
(assert (= in10 ( +  in9 in8)))
(assert (<= in11 100))
(assert (= in11 ( +  in10 in9)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10))))
(assert (not
(and (<= in0 100) (= in1 in0) (<= in2 100) (= in2 ( +  in1 in0)) (<= in3 100) (= in3 ( +  in2 in1)) (<= in4 100) (= in4 ( +  in3 in2)) (<= in5 100) (= in5 ( +  in4 in3)) (<= in6 100) (= in6 ( +  in5 in4)) (<= in7 100) (= in7 ( +  in6 in5)) (<= in8 100) (= in8 ( +  in7 in6)) (<= in9 100) (= in9 ( +  in8 in7)) (<= in10 100) (= in10 ( +  in9 in8)) (<= in11 100) (= in11 ( +  in10 in9)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (<= in0 100))
(assert (= in1 in0))
(assert (<= in2 100))
(assert (= in2 ( +  in1 in0)))
(assert (<= in3 100))
(assert (= in3 ( +  in2 in1)))
(assert (<= in4 100))
(assert (= in4 ( +  in3 in2)))
(assert (<= in5 100))
(assert (= in5 ( +  in4 in3)))
(assert (<= in6 100))
(assert (= in6 ( +  in5 in4)))
(assert (<= in7 100))
(assert (= in7 ( +  in6 in5)))
(assert (<= in8 100))
(assert (= in8 ( +  in7 in6)))
(assert (<= in9 100))
(assert (= in9 ( +  in8 in7)))
(assert (<= in10 100))
(assert (= in10 ( +  in9 in8)))
(assert (<= in11 100))
(assert (= in11 ( +  in10 in9)))
(assert (not
(and (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10))))
))
(check-sat)
(pop)
