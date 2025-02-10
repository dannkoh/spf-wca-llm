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
(declare-const in18 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100))  ( <  in4 100))  ( <  in5 100))  ( <  in6 100))  ( <  in7 100))  ( <  in8 100))  ( <  in9 100))  ( <  in10 100))  ( <  in11 100))  ( <  in12 100))  ( <  in13 100))  ( <  in14 100))  ( <  in15 100))  ( <  in16 100))  ( <  in17 100))  ( <  in18 100)))
(pop)

; Generated constraints (B):
(push)
(assert (and ( < in0100) and ( < in1100) and ( < in2100) and ( < in3100) and ( < in4100) and ( < in5100) and ( < in6100) and ( < in7100) and ( < in8100) and ( < in9100) and ( < in10100) and ( < in11100) and ( < in12100) and ( < in13100) and ( < in14100) and ( < in15100) and ( < in16100) and ( < in17100) and ( < in18100)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100))  ( <  in4 100))  ( <  in5 100))  ( <  in6 100))  ( <  in7 100))  ( <  in8 100))  ( <  in9 100))  ( <  in10 100))  ( <  in11 100))  ( <  in12 100))  ( <  in13 100))  ( <  in14 100))  ( <  in15 100))  ( <  in16 100))  ( <  in17 100))  ( <  in18 100)))
(assert (not
(and (and ( < in0100) and ( < in1100) and ( < in2100) and ( < in3100) and ( < in4100) and ( < in5100) and ( < in6100) and ( < in7100) and ( < in8100) and ( < in9100) and ( < in10100) and ( < in11100) and ( < in12100) and ( < in13100) and ( < in14100) and ( < in15100) and ( < in16100) and ( < in17100) and ( < in18100)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and ( < in0100) and ( < in1100) and ( < in2100) and ( < in3100) and ( < in4100) and ( < in5100) and ( < in6100) and ( < in7100) and ( < in8100) and ( < in9100) and ( < in10100) and ( < in11100) and ( < in12100) and ( < in13100) and ( < in14100) and ( < in15100) and ( < in16100) and ( < in17100) and ( < in18100)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100))  ( <  in4 100))  ( <  in5 100))  ( <  in6 100))  ( <  in7 100))  ( <  in8 100))  ( <  in9 100))  ( <  in10 100))  ( <  in11 100))  ( <  in12 100))  ( <  in13 100))  ( <  in14 100))  ( <  in15 100))  ( <  in16 100))  ( <  in17 100))  ( <  in18 100)))
))
(check-sat)
(pop)
