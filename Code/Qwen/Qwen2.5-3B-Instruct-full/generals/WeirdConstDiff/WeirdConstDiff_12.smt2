; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in11 Int)
(declare-const in10 Int)
(declare-const in9 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and  ( =  ( -  in2 in1) ( -  in1 in0))  ( =  ( -  in3 in2) ( -  in2 in1)))  ( =  ( -  in4 in3) ( -  in3 in2)))  ( =  ( -  in5 in4) ( -  in4 in3)))  ( =  ( -  in6 in5) ( -  in5 in4)))  ( =  ( -  in7 in6) ( -  in6 in5)))  ( =  ( -  in8 in7) ( -  in7 in6)))  ( =  ( -  in9 in8) ( -  in8 in7)))  ( =  ( -  in10 in9) ( -  in9 in8)))  ( =  ( -  in11 in10) ( -  in10 in9))))
(pop)

; Generated constraints (B):
(push)
(assert (and (and  ( =  ( -  in1 in0) ( -  in2 in1))  (and  ( =  ( -  in2 in1) ( -  in3 in2))  (and  ( =  ( -  in3 in2) ( -  in4 in3))  (and  ( =  ( -  in4 in3) ( -  in5 in4))  (and  ( =  ( -  in5 in4) ( -  in6 in5))  (and  ( =  ( -  in6 in5) ( -  in7 in6))  (and  ( =  ( -  in7 in6) ( -  in8 in7))  (and  ( =  ( -  in8 in7) ( -  in9 in8))  (and  ( =  ( -  in9 in8) ( -  in10 in9))  (and  ( =  ( -  in10 in9) ( -  in11 in10))  (and  ( =  ( -  in11 in10) ( -  in12 in11)) (assert (and (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and  ( =  ( -  in2 in1) ( -  in1 in0))  ( =  ( -  in3 in2) ( -  in2 in1)))  ( =  ( -  in4 in3) ( -  in3 in2)))  ( =  ( -  in5 in4) ( -  in4 in3)))  ( =  ( -  in6 in5) ( -  in5 in4)))  ( =  ( -  in7 in6) ( -  in6 in5)))  ( =  ( -  in8 in7) ( -  in7 in6)))  ( =  ( -  in9 in8) ( -  in8 in7)))  ( =  ( -  in10 in9) ( -  in9 in8)))  ( =  ( -  in11 in10) ( -  in10 in9))))
(assert (not
(and (and (and  ( =  ( -  in1 in0) ( -  in2 in1))  (and  ( =  ( -  in2 in1) ( -  in3 in2))  (and  ( =  ( -  in3 in2) ( -  in4 in3))  (and  ( =  ( -  in4 in3) ( -  in5 in4))  (and  ( =  ( -  in5 in4) ( -  in6 in5))  (and  ( =  ( -  in6 in5) ( -  in7 in6))  (and  ( =  ( -  in7 in6) ( -  in8 in7))  (and  ( =  ( -  in8 in7) ( -  in9 in8))  (and  ( =  ( -  in9 in8) ( -  in10 in9))  (and  ( =  ( -  in10 in9) ( -  in11 in10))  (and  ( =  ( -  in11 in10) ( -  in12 in11)) (assert (and (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (and  ( =  ( -  in1 in0) ( -  in2 in1))  (and  ( =  ( -  in2 in1) ( -  in3 in2))  (and  ( =  ( -  in3 in2) ( -  in4 in3))  (and  ( =  ( -  in4 in3) ( -  in5 in4))  (and  ( =  ( -  in5 in4) ( -  in6 in5))  (and  ( =  ( -  in6 in5) ( -  in7 in6))  (and  ( =  ( -  in7 in6) ( -  in8 in7))  (and  ( =  ( -  in8 in7) ( -  in9 in8))  (and  ( =  ( -  in9 in8) ( -  in10 in9))  (and  ( =  ( -  in10 in9) ( -  in11 in10))  (and  ( =  ( -  in11 in10) ( -  in12 in11)) (assert (and (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100) (<= - in{i} 100))))
(assert (not
(and (and (and (and (and (and (and (and (and (and  ( =  ( -  in2 in1) ( -  in1 in0))  ( =  ( -  in3 in2) ( -  in2 in1)))  ( =  ( -  in4 in3) ( -  in3 in2)))  ( =  ( -  in5 in4) ( -  in4 in3)))  ( =  ( -  in6 in5) ( -  in5 in4)))  ( =  ( -  in7 in6) ( -  in6 in5)))  ( =  ( -  in8 in7) ( -  in7 in6)))  ( =  ( -  in9 in8) ( -  in8 in7)))  ( =  ( -  in10 in9) ( -  in9 in8)))  ( =  ( -  in11 in10) ( -  in10 in9))))
))
(check-sat)
(pop)
