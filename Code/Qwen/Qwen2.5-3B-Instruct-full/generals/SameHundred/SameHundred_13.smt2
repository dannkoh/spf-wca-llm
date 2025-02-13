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
(declare-const in12 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100))  ( <  in4 100))  ( <  in5 100))  ( <  in6 100))  ( <  in7 100))  ( <  in8 100))  ( <  in9 100))  ( <  in10 100))  ( <  in11 100))  ( <  in12 100)))
(pop)

; Generated constraints (B):
(push)
(assert (<= in0 100) and(assert (<= in1 100) and(assert (<= in2 100) and(assert (<= in3 100) and(assert (<= in4 100) and(assert (<= in5 100) and(assert (<= in6 100) and(assert (<= in7 100) and(assert (<= in8 100) and(assert (<= in9 100) and(assert (<= in10 100) and(assert (<= in11 100) and(assert (<= in12 100))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100))  ( <  in4 100))  ( <  in5 100))  ( <  in6 100))  ( <  in7 100))  ( <  in8 100))  ( <  in9 100))  ( <  in10 100))  ( <  in11 100))  ( <  in12 100)))
(assert (not
(and (<= in0 100) and(assert (<= in1 100) and(assert (<= in2 100) and(assert (<= in3 100) and(assert (<= in4 100) and(assert (<= in5 100) and(assert (<= in6 100) and(assert (<= in7 100) and(assert (<= in8 100) and(assert (<= in9 100) and(assert (<= in10 100) and(assert (<= in11 100) and(assert (<= in12 100))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (<= in0 100) and(assert (<= in1 100) and(assert (<= in2 100) and(assert (<= in3 100) and(assert (<= in4 100) and(assert (<= in5 100) and(assert (<= in6 100) and(assert (<= in7 100) and(assert (<= in8 100) and(assert (<= in9 100) and(assert (<= in10 100) and(assert (<= in11 100) and(assert (<= in12 100))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100))  ( <  in4 100))  ( <  in5 100))  ( <  in6 100))  ( <  in7 100))  ( <  in8 100))  ( <  in9 100))  ( <  in10 100))  ( <  in11 100))  ( <  in12 100)))
))
(check-sat)
(pop)
