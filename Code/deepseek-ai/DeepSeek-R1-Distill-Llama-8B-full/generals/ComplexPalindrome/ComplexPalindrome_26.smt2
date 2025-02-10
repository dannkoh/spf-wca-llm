; Combined SMT for checking equivalence
; Original constants:
(declare-const in20 Int)
(declare-const in22 Int)
(declare-const in21 Int)
(declare-const in24 Int)
(declare-const in23 Int)
(declare-const in25 Int)
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
(declare-const in19 Int)
(declare-const in18 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in25)  ( <  in1 in24))  ( <  in2 in23))  ( <  in3 in22))  ( <  in4 in21))  ( <  in5 in20))  ( <  in6 in19))  ( <  in7 in18))  ( <  in8 in17))  ( <  in9 in16))  ( <  in10 in15))  ( <  in11 in14))  ( <  in12 in13)))
(pop)

; Generated constraints (B):
(push)
(assert (and ( < in12 in13) (and ( < in11 in14) (and ( < in10 in15) (and ( < in9 in16) (and ( < in8 in17) (and ( < in7 in18) (and ( < in6 in19) (and ( < in5 in20) (and ( < in4 in21) (and ( < in3 in22) (and ( < in2 in23) (and ( < in1 in24) ( < in0 in25))))))))))))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in25)  ( <  in1 in24))  ( <  in2 in23))  ( <  in3 in22))  ( <  in4 in21))  ( <  in5 in20))  ( <  in6 in19))  ( <  in7 in18))  ( <  in8 in17))  ( <  in9 in16))  ( <  in10 in15))  ( <  in11 in14))  ( <  in12 in13)))
(assert (not
(and (and ( < in12 in13) (and ( < in11 in14) (and ( < in10 in15) (and ( < in9 in16) (and ( < in8 in17) (and ( < in7 in18) (and ( < in6 in19) (and ( < in5 in20) (and ( < in4 in21) (and ( < in3 in22) (and ( < in2 in23) (and ( < in1 in24) ( < in0 in25))))))))))))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and ( < in12 in13) (and ( < in11 in14) (and ( < in10 in15) (and ( < in9 in16) (and ( < in8 in17) (and ( < in7 in18) (and ( < in6 in19) (and ( < in5 in20) (and ( < in4 in21) (and ( < in3 in22) (and ( < in2 in23) (and ( < in1 in24) ( < in0 in25))))))))))))))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in25)  ( <  in1 in24))  ( <  in2 in23))  ( <  in3 in22))  ( <  in4 in21))  ( <  in5 in20))  ( <  in6 in19))  ( <  in7 in18))  ( <  in8 in17))  ( <  in9 in16))  ( <  in10 in15))  ( <  in11 in14))  ( <  in12 in13)))
))
(check-sat)
(pop)
