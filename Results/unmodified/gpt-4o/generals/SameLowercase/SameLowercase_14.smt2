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
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122))  ( >=  in10 97))  ( <=  in10 122))  ( >=  in11 97))  ( <=  in11 122))  ( >=  in12 97))  ( <=  in12 122))  ( >=  in13 97))  ( <=  in13 122)))
(pop)

; Generated constraints (B):
(push)
(assert (and (and (>= in0 97) (<= in0 122)) (and (>= in1 97) (<= in1 122)) (and (>= in2 97) (<= in2 122)) (and (>= in3 97) (<= in3 122)) (and (>= in4 97) (<= in4 122)) (and (>= in5 97) (<= in5 122)) (and (>= in6 97) (<= in6 122)) (and (>= in7 97) (<= in7 122)) (and (>= in8 97) (<= in8 122)) (and (>= in9 97) (<= in9 122)) (and (>= in10 97) (<= in10 122)) (and (>= in11 97) (<= in11 122)) (and (>= in12 97) (<= in12 122)) (and (>= in13 97) (<= in13 122))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122))  ( >=  in10 97))  ( <=  in10 122))  ( >=  in11 97))  ( <=  in11 122))  ( >=  in12 97))  ( <=  in12 122))  ( >=  in13 97))  ( <=  in13 122)))
(assert (not
(and (and (and (>= in0 97) (<= in0 122)) (and (>= in1 97) (<= in1 122)) (and (>= in2 97) (<= in2 122)) (and (>= in3 97) (<= in3 122)) (and (>= in4 97) (<= in4 122)) (and (>= in5 97) (<= in5 122)) (and (>= in6 97) (<= in6 122)) (and (>= in7 97) (<= in7 122)) (and (>= in8 97) (<= in8 122)) (and (>= in9 97) (<= in9 122)) (and (>= in10 97) (<= in10 122)) (and (>= in11 97) (<= in11 122)) (and (>= in12 97) (<= in12 122)) (and (>= in13 97) (<= in13 122))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (and (>= in0 97) (<= in0 122)) (and (>= in1 97) (<= in1 122)) (and (>= in2 97) (<= in2 122)) (and (>= in3 97) (<= in3 122)) (and (>= in4 97) (<= in4 122)) (and (>= in5 97) (<= in5 122)) (and (>= in6 97) (<= in6 122)) (and (>= in7 97) (<= in7 122)) (and (>= in8 97) (<= in8 122)) (and (>= in9 97) (<= in9 122)) (and (>= in10 97) (<= in10 122)) (and (>= in11 97) (<= in11 122)) (and (>= in12 97) (<= in12 122)) (and (>= in13 97) (<= in13 122))))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122))  ( >=  in10 97))  ( <=  in10 122))  ( >=  in11 97))  ( <=  in11 122))  ( >=  in12 97))  ( <=  in12 122))  ( >=  in13 97))  ( <=  in13 122)))
))
(check-sat)
(pop)
