; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in7 Int)
(declare-const in11 Int)
(declare-const in9 Int)
(declare-const in10 Int)
(declare-const in13 Int)
(declare-const in12 Int)
(declare-const in15 Int)
(declare-const in14 Int)
(declare-const in16 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and  ( <  in0 in16)  ( <  in1 in15))  ( <  in2 in14))  ( <  in3 in13))  ( <  in4 in12))  ( <  in5 in11))  ( <  in6 in10))  ( <  in7 in9)))
(pop)

; Generated constraints (B):
(push)
(assert (and ( < in7 in9) (and ( < in6 in10) (and ( < in5 in11) (and ( < in4 in12) (and ( < in3 in13) (and ( < in2 in14) (and ( < in1 in15) ( < in0 in16)))))))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and  ( <  in0 in16)  ( <  in1 in15))  ( <  in2 in14))  ( <  in3 in13))  ( <  in4 in12))  ( <  in5 in11))  ( <  in6 in10))  ( <  in7 in9)))
(assert (not
(and (and ( < in7 in9) (and ( < in6 in10) (and ( < in5 in11) (and ( < in4 in12) (and ( < in3 in13) (and ( < in2 in14) (and ( < in1 in15) ( < in0 in16)))))))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and ( < in7 in9) (and ( < in6 in10) (and ( < in5 in11) (and ( < in4 in12) (and ( < in3 in13) (and ( < in2 in14) (and ( < in1 in15) ( < in0 in16)))))))))
(assert (not
(and (and (and (and (and (and (and (and  ( <  in0 in16)  ( <  in1 in15))  ( <  in2 in14))  ( <  in3 in13))  ( <  in4 in12))  ( <  in5 in11))  ( <  in6 in10))  ( <  in7 in9)))
))
(check-sat)
(pop)
