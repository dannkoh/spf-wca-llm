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

(assert (and (and (and (and (and (and (and (and (and  ( =  in2 ( +  in0 in1))  ( =  in3 ( +  in1 in2)))  ( =  in4 ( +  in2 in3)))  ( =  in5 ( +  in3 in4)))  ( =  in6 ( +  in4 in5)))  ( =  in7 ( +  in5 in6)))  ( =  in8 ( +  in6 in7)))  ( =  in9 ( +  in7 in8)))  ( =  in10 ( +  in8 in9)))  ( =  in11 ( +  in9 in10))))

(check-sat)
(get-model)