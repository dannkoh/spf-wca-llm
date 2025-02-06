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
(declare-const in15 Int)
(declare-const in14 Int)
(declare-const in17 Int)
(declare-const in16 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 120)  ( =  in1 120))  ( =  in2 120))  ( =  in3 120))  ( =  in4 120))  ( =  in5 120))  ( =  in6 120))  ( =  in7 120))  ( =  in8 120))  ( =  in9 120))  ( =  in10 120))  ( =  in11 120))  ( =  in12 120))  ( =  in13 120))  ( =  in14 120))  ( =  in15 120))  ( =  in16 120))  ( =  in17 120)))
(pop)

; Generated constraints (B):
(push)
(assert (and ( = in0 120) ( = in1 120) ( = in2 120) ( = in3 120) ( = in4 120) ( = in5 120) ( = in6 120) ( = in7 120) ( = in8 120) ( = in9 120) ( = in10 120) ( = in11 120) ( = in12 120) ( = in13 120) ( = in14 120) ( = in15 120) ( = in16 120) ( = in17 120)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 120)  ( =  in1 120))  ( =  in2 120))  ( =  in3 120))  ( =  in4 120))  ( =  in5 120))  ( =  in6 120))  ( =  in7 120))  ( =  in8 120))  ( =  in9 120))  ( =  in10 120))  ( =  in11 120))  ( =  in12 120))  ( =  in13 120))  ( =  in14 120))  ( =  in15 120))  ( =  in16 120))  ( =  in17 120)))
(assert (not
(and (and ( = in0 120) ( = in1 120) ( = in2 120) ( = in3 120) ( = in4 120) ( = in5 120) ( = in6 120) ( = in7 120) ( = in8 120) ( = in9 120) ( = in10 120) ( = in11 120) ( = in12 120) ( = in13 120) ( = in14 120) ( = in15 120) ( = in16 120) ( = in17 120)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and ( = in0 120) ( = in1 120) ( = in2 120) ( = in3 120) ( = in4 120) ( = in5 120) ( = in6 120) ( = in7 120) ( = in8 120) ( = in9 120) ( = in10 120) ( = in11 120) ( = in12 120) ( = in13 120) ( = in14 120) ( = in15 120) ( = in16 120) ( = in17 120)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 120)  ( =  in1 120))  ( =  in2 120))  ( =  in3 120))  ( =  in4 120))  ( =  in5 120))  ( =  in6 120))  ( =  in7 120))  ( =  in8 120))  ( =  in9 120))  ( =  in10 120))  ( =  in11 120))  ( =  in12 120))  ( =  in13 120))  ( =  in14 120))  ( =  in15 120))  ( =  in16 120))  ( =  in17 120)))
))
(check-sat)
(pop)
