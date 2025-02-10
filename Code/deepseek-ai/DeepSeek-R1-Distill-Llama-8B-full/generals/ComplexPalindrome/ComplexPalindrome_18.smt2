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
(declare-const in9 Int)
(declare-const in10 Int)
(declare-const in13 Int)
(declare-const in12 Int)
(declare-const in15 Int)
(declare-const in14 Int)
(declare-const in17 Int)
(declare-const in16 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and  ( <  in0 in17)  ( <  in1 in16))  ( <  in2 in15))  ( <  in3 in14))  ( <  in4 in13))  ( <  in5 in12))  ( <  in6 in11))  ( <  in7 in10))  ( <  in8 in9)))
(pop)

; Generated constraints (B):
(push)
(assert (and ( < in8 in9) (and ( < in7 in10) (and ( < in6 in11) (and ( < in5 in12) (and ( < in4 in13) (and ( < in3 in14) (and ( < in2 in15) (and ( < in1 in16) ( < in0 in17))))))))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and  ( <  in0 in17)  ( <  in1 in16))  ( <  in2 in15))  ( <  in3 in14))  ( <  in4 in13))  ( <  in5 in12))  ( <  in6 in11))  ( <  in7 in10))  ( <  in8 in9)))
(assert (not
(and (and ( < in8 in9) (and ( < in7 in10) (and ( < in6 in11) (and ( < in5 in12) (and ( < in4 in13) (and ( < in3 in14) (and ( < in2 in15) (and ( < in1 in16) ( < in0 in17))))))))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and ( < in8 in9) (and ( < in7 in10) (and ( < in6 in11) (and ( < in5 in12) (and ( < in4 in13) (and ( < in3 in14) (and ( < in2 in15) (and ( < in1 in16) ( < in0 in17))))))))))
(assert (not
(and (and (and (and (and (and (and (and (and  ( <  in0 in17)  ( <  in1 in16))  ( <  in2 in15))  ( <  in3 in14))  ( <  in4 in13))  ( <  in5 in12))  ( <  in6 in11))  ( <  in7 in10))  ( <  in8 in9)))
))
(check-sat)
(pop)
