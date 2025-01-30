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
(declare-const in11 Int)
(declare-const in9 Int)
(declare-const in10 Int)
(declare-const in13 Int)
(declare-const in12 Int)
(declare-const in14 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and  ( <  in0 in14)  ( <  in1 in13))  ( <  in2 in12))  ( <  in3 in11))  ( <  in4 in10))  ( <  in5 in9))  ( <  in6 in8)))
(pop)

; Generated constraints (B):
(push)
(assert (and ( < in0 in14) ( < in1 in13) ( < in2 in12) ( < in3 in11) ( < in4 in10) ( < in5 in9) ( < in6 in8) ))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and  ( <  in0 in14)  ( <  in1 in13))  ( <  in2 in12))  ( <  in3 in11))  ( <  in4 in10))  ( <  in5 in9))  ( <  in6 in8)))
(assert (not
(and (and ( < in0 in14) ( < in1 in13) ( < in2 in12) ( < in3 in11) ( < in4 in10) ( < in5 in9) ( < in6 in8) ))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and ( < in0 in14) ( < in1 in13) ( < in2 in12) ( < in3 in11) ( < in4 in10) ( < in5 in9) ( < in6 in8) ))
(assert (not
(and (and (and (and (and (and (and  ( <  in0 in14)  ( <  in1 in13))  ( <  in2 in12))  ( <  in3 in11))  ( <  in4 in10))  ( <  in5 in9))  ( <  in6 in8)))
))
(check-sat)
(pop)
