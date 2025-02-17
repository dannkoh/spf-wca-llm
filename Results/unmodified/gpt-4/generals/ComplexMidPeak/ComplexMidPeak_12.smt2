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
(assert (and (and (and (and (and (and (and (and (and (and  ( <  in0 in1)  ( <  in1 in2))  ( <  in2 in3))  ( <  in3 in4))  ( <  in4 in5))  ( <  in5 in6))  ( >  in6 in7))  ( >  in7 in8))  ( >  in8 in9))  ( >  in9 in10))  ( >  in10 in11)))
(pop)

; Generated constraints (B):
(push)
(assert (and (< in0 in1) (< in1 in2) (< in2 in3) (< in3 in4) (< in4 in5) (> in5 in6) (> in6 in7) (> in7 in8) (> in8 in9) (> in9 in10) (> in10 in11) ))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and  ( <  in0 in1)  ( <  in1 in2))  ( <  in2 in3))  ( <  in3 in4))  ( <  in4 in5))  ( <  in5 in6))  ( >  in6 in7))  ( >  in7 in8))  ( >  in8 in9))  ( >  in9 in10))  ( >  in10 in11)))
(assert (not
(and (and (< in0 in1) (< in1 in2) (< in2 in3) (< in3 in4) (< in4 in5) (> in5 in6) (> in6 in7) (> in7 in8) (> in8 in9) (> in9 in10) (> in10 in11) ))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (< in0 in1) (< in1 in2) (< in2 in3) (< in3 in4) (< in4 in5) (> in5 in6) (> in6 in7) (> in7 in8) (> in8 in9) (> in9 in10) (> in10 in11) ))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in1)  ( <  in1 in2))  ( <  in2 in3))  ( <  in3 in4))  ( <  in4 in5))  ( <  in5 in6))  ( >  in6 in7))  ( >  in7 in8))  ( >  in8 in9))  ( >  in9 in10))  ( >  in10 in11)))
))
(check-sat)
(pop)
