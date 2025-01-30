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
(declare-const in13 Int)
(declare-const in12 Int)
(declare-const in15 Int)
(declare-const in14 Int)
(declare-const in17 Int)
(declare-const in16 Int)
(declare-const in18 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and  ( <  in0 in18)  ( <  in1 in17))  ( <  in2 in16))  ( <  in3 in15))  ( <  in4 in14))  ( <  in5 in13))  ( <  in6 in12))  ( <  in7 in11))  ( <  in8 in10)))
(pop)

; Generated constraints (B):
(push)
(assert ( < in0 in1)) (assert ( < in0 in2)) (assert ( < in0 in3)) (assert ( < in0 in4)) (assert ( < in0 in5)) (assert ( < in0 in6)) (assert ( < in0 in7)) (assert ( < in0 in8)) (assert ( < in0 in9)) (assert ( < in0 in10)) (assert ( < in0 in11)) (assert ( < in0 in12)) (assert ( < in0 in13)) (assert ( < in0 in14)) (assert ( < in0 in15)) (assert ( < in0 in16)) (assert ( < in0 in17)) (assert ( < in0 in18)) (assert ( < in1 in2)) (assert ( < in1 in3)) (assert ( < in1 in4)) (assert ( < in1 in5)) (assert ( < in1 in6)) (assert ( < in1 in7)) (assert ( < in1 in8)) (assert ( < in1 in9)) (assert ( < in1 in10)) (assert ( < in1 in11)) (assert ( < in1 in12)) (assert ( < in1 in13)) (assert ( < in1 in14)) (assert ( < in1 in15)) (assert ( < in1 in16)) (assert ( < in1 in17)) (assert ( < in1 in18)) (assert ( < in2 in3)) (assert ( < in2 in4)) (assert ( < in2 in5)) (assert ( < in2 in6)) (assert ( < in2 in7)) (assert ( < in2 in8)) (assert ( < in2 in9)) (assert ( < in2 in10)) (assert ( < in2 in11)) (assert ( < in2 in12)) (assert ( < in2 in13)) (assert ( < in2 in14)) (assert ( < in2 in15)) (assert ( < in2 in16)) (assert ( < in2 in17)) (assert ( < in2 in18)) (assert ( < in3 in4)) (assert ( < in3 in5)) (assert ( < in3 in6)) (assert ( < in3 in7)) (assert ( < in3 in8)) (assert ( < in3 in9)) (assert ( < in3 in10)) (assert ( < in3 in11)) (assert ( < in3 in12)) (assert ( < in3 in13)) (assert ( < in3 in14)) (assert ( < in3 in15)) (assert ( < in3 in16)) (assert ( < in3 in17)) (assert ( < in3 in18)) (assert ( < in4 in5)) (assert ( < in4 in6)) (assert ( < in4 in7)) (assert ( < in4 in8)) (assert ( < in4 in9)) (assert ( < in4 in10)) (assert ( < in4 in11)) (assert ( < in4 in12)) (assert ( < in4 in13)) (assert ( < in4 in14)) (assert ( < in4 in15)) (assert ( < in4 in16)) (assert ( < in4 in17)) (assert ( < in4 in18)) (assert ( < in5 in6)) (assert ( < in5 in7)) (assert ( < in5 in8)) (assert ( < in5 in9)) (assert ( < in5 in10)) (assert ( < in5 in11)) (assert ( < in5 in12)) (assert ( < in5 in13)) (assert ( < in5 in14)) (assert ( < in5 in15)) (assert ( < in5 in16)) (assert ( < in5 in17)) (assert ( < in5 in18)) (assert ( < in6 in7)) (assert ( < in6 in8)) (assert ( < in6 in9)) (assert ( < in6 in10)) (assert ( < in6 in11)) (assert ( < in6 in12)) (assert ( < in6 in13)) (assert ( < in6 in14)) (assert ( < in6 in15)) (assert ( < in6 in16)) (assert ( < in6 in17)) (assert ( < in6 in18)) (assert ( < in7 in8)) (assert ( < in7 in9)) (assert ( < in7 in10)) (assert ( < in7 in11)) (assert ( < in7 in12)) (assert ( < in7 in13)) (assert ( < in7 in14)) (assert ( < in7 in15)) (assert ( < in7 in16)) (assert ( < in7 in17)) (assert ( < in7 in18)) (assert ( < in8 in9)) (assert ( < in8 in10)) (assert ( < in8 in11)) (assert ( < in8 in12)) (assert ( < in8 in13)) (assert ( < in8 in14)) (assert ( < in8 in15)) (assert ( < in8 in16)) (assert ( < in8 in17)) (assert ( < in8 in18)) (assert ( < in9 in10)) (assert ( < in9 in11)) (assert ( < in9 in12)) (assert ( < in9 in13)) (assert ( < in9 in14)) (assert ( < in9 in15)) (assert ( < in9 in16)) (assert ( < in9 in17)) (assert ( < in9 in18)) (assert ( < in10 in11)) (assert ( < in10 in12)) (assert ( < in10 in13)) (assert ( < in10 in14)) (assert ( < in10 in15)) (assert ( < in10 in16)) (assert ( < in10 in17)) (assert ( < in10 in18)) (assert ( < in11 in12)) (assert ( < in11 in13)) (assert ( < in11 in14)) (assert ( < in11 in15)) (assert ( < in11 in16)) (assert ( < in11 in17)) (assert ( < in11 in18)) (assert ( < in12 in13)) (assert ( < in12 in14)) (assert ( < in12 in15)) (assert ( < in12 in16)) (assert ( < in12 in17)) (assert ( < in12 in18)) (assert ( < in13 in14)) (assert ( < in13 in15)) (assert ( < in13 in16)) (assert ( < in13 in17)) (assert ( < in13 in18)) (assert ( < in14 in15)) (assert ( < in14 in16)) (assert ( < in14 in17)) (assert ( < in14 in18)) (assert ( < in15 in16)) (assert ( < in15 in17)) (assert ( < in15 in18)) (assert ( < in16 in17)) (assert ( < in16 in18)) (assert ( < in17 in18))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and  ( <  in0 in18)  ( <  in1 in17))  ( <  in2 in16))  ( <  in3 in15))  ( <  in4 in14))  ( <  in5 in13))  ( <  in6 in12))  ( <  in7 in11))  ( <  in8 in10)))
(assert (not
(and ( < in0 in1)) (assert ( < in0 in2)) (assert ( < in0 in3)) (assert ( < in0 in4)) (assert ( < in0 in5)) (assert ( < in0 in6)) (assert ( < in0 in7)) (assert ( < in0 in8)) (assert ( < in0 in9)) (assert ( < in0 in10)) (assert ( < in0 in11)) (assert ( < in0 in12)) (assert ( < in0 in13)) (assert ( < in0 in14)) (assert ( < in0 in15)) (assert ( < in0 in16)) (assert ( < in0 in17)) (assert ( < in0 in18)) (assert ( < in1 in2)) (assert ( < in1 in3)) (assert ( < in1 in4)) (assert ( < in1 in5)) (assert ( < in1 in6)) (assert ( < in1 in7)) (assert ( < in1 in8)) (assert ( < in1 in9)) (assert ( < in1 in10)) (assert ( < in1 in11)) (assert ( < in1 in12)) (assert ( < in1 in13)) (assert ( < in1 in14)) (assert ( < in1 in15)) (assert ( < in1 in16)) (assert ( < in1 in17)) (assert ( < in1 in18)) (assert ( < in2 in3)) (assert ( < in2 in4)) (assert ( < in2 in5)) (assert ( < in2 in6)) (assert ( < in2 in7)) (assert ( < in2 in8)) (assert ( < in2 in9)) (assert ( < in2 in10)) (assert ( < in2 in11)) (assert ( < in2 in12)) (assert ( < in2 in13)) (assert ( < in2 in14)) (assert ( < in2 in15)) (assert ( < in2 in16)) (assert ( < in2 in17)) (assert ( < in2 in18)) (assert ( < in3 in4)) (assert ( < in3 in5)) (assert ( < in3 in6)) (assert ( < in3 in7)) (assert ( < in3 in8)) (assert ( < in3 in9)) (assert ( < in3 in10)) (assert ( < in3 in11)) (assert ( < in3 in12)) (assert ( < in3 in13)) (assert ( < in3 in14)) (assert ( < in3 in15)) (assert ( < in3 in16)) (assert ( < in3 in17)) (assert ( < in3 in18)) (assert ( < in4 in5)) (assert ( < in4 in6)) (assert ( < in4 in7)) (assert ( < in4 in8)) (assert ( < in4 in9)) (assert ( < in4 in10)) (assert ( < in4 in11)) (assert ( < in4 in12)) (assert ( < in4 in13)) (assert ( < in4 in14)) (assert ( < in4 in15)) (assert ( < in4 in16)) (assert ( < in4 in17)) (assert ( < in4 in18)) (assert ( < in5 in6)) (assert ( < in5 in7)) (assert ( < in5 in8)) (assert ( < in5 in9)) (assert ( < in5 in10)) (assert ( < in5 in11)) (assert ( < in5 in12)) (assert ( < in5 in13)) (assert ( < in5 in14)) (assert ( < in5 in15)) (assert ( < in5 in16)) (assert ( < in5 in17)) (assert ( < in5 in18)) (assert ( < in6 in7)) (assert ( < in6 in8)) (assert ( < in6 in9)) (assert ( < in6 in10)) (assert ( < in6 in11)) (assert ( < in6 in12)) (assert ( < in6 in13)) (assert ( < in6 in14)) (assert ( < in6 in15)) (assert ( < in6 in16)) (assert ( < in6 in17)) (assert ( < in6 in18)) (assert ( < in7 in8)) (assert ( < in7 in9)) (assert ( < in7 in10)) (assert ( < in7 in11)) (assert ( < in7 in12)) (assert ( < in7 in13)) (assert ( < in7 in14)) (assert ( < in7 in15)) (assert ( < in7 in16)) (assert ( < in7 in17)) (assert ( < in7 in18)) (assert ( < in8 in9)) (assert ( < in8 in10)) (assert ( < in8 in11)) (assert ( < in8 in12)) (assert ( < in8 in13)) (assert ( < in8 in14)) (assert ( < in8 in15)) (assert ( < in8 in16)) (assert ( < in8 in17)) (assert ( < in8 in18)) (assert ( < in9 in10)) (assert ( < in9 in11)) (assert ( < in9 in12)) (assert ( < in9 in13)) (assert ( < in9 in14)) (assert ( < in9 in15)) (assert ( < in9 in16)) (assert ( < in9 in17)) (assert ( < in9 in18)) (assert ( < in10 in11)) (assert ( < in10 in12)) (assert ( < in10 in13)) (assert ( < in10 in14)) (assert ( < in10 in15)) (assert ( < in10 in16)) (assert ( < in10 in17)) (assert ( < in10 in18)) (assert ( < in11 in12)) (assert ( < in11 in13)) (assert ( < in11 in14)) (assert ( < in11 in15)) (assert ( < in11 in16)) (assert ( < in11 in17)) (assert ( < in11 in18)) (assert ( < in12 in13)) (assert ( < in12 in14)) (assert ( < in12 in15)) (assert ( < in12 in16)) (assert ( < in12 in17)) (assert ( < in12 in18)) (assert ( < in13 in14)) (assert ( < in13 in15)) (assert ( < in13 in16)) (assert ( < in13 in17)) (assert ( < in13 in18)) (assert ( < in14 in15)) (assert ( < in14 in16)) (assert ( < in14 in17)) (assert ( < in14 in18)) (assert ( < in15 in16)) (assert ( < in15 in17)) (assert ( < in15 in18)) (assert ( < in16 in17)) (assert ( < in16 in18)) (assert ( < in17 in18))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert ( < in0 in1)) (assert ( < in0 in2)) (assert ( < in0 in3)) (assert ( < in0 in4)) (assert ( < in0 in5)) (assert ( < in0 in6)) (assert ( < in0 in7)) (assert ( < in0 in8)) (assert ( < in0 in9)) (assert ( < in0 in10)) (assert ( < in0 in11)) (assert ( < in0 in12)) (assert ( < in0 in13)) (assert ( < in0 in14)) (assert ( < in0 in15)) (assert ( < in0 in16)) (assert ( < in0 in17)) (assert ( < in0 in18)) (assert ( < in1 in2)) (assert ( < in1 in3)) (assert ( < in1 in4)) (assert ( < in1 in5)) (assert ( < in1 in6)) (assert ( < in1 in7)) (assert ( < in1 in8)) (assert ( < in1 in9)) (assert ( < in1 in10)) (assert ( < in1 in11)) (assert ( < in1 in12)) (assert ( < in1 in13)) (assert ( < in1 in14)) (assert ( < in1 in15)) (assert ( < in1 in16)) (assert ( < in1 in17)) (assert ( < in1 in18)) (assert ( < in2 in3)) (assert ( < in2 in4)) (assert ( < in2 in5)) (assert ( < in2 in6)) (assert ( < in2 in7)) (assert ( < in2 in8)) (assert ( < in2 in9)) (assert ( < in2 in10)) (assert ( < in2 in11)) (assert ( < in2 in12)) (assert ( < in2 in13)) (assert ( < in2 in14)) (assert ( < in2 in15)) (assert ( < in2 in16)) (assert ( < in2 in17)) (assert ( < in2 in18)) (assert ( < in3 in4)) (assert ( < in3 in5)) (assert ( < in3 in6)) (assert ( < in3 in7)) (assert ( < in3 in8)) (assert ( < in3 in9)) (assert ( < in3 in10)) (assert ( < in3 in11)) (assert ( < in3 in12)) (assert ( < in3 in13)) (assert ( < in3 in14)) (assert ( < in3 in15)) (assert ( < in3 in16)) (assert ( < in3 in17)) (assert ( < in3 in18)) (assert ( < in4 in5)) (assert ( < in4 in6)) (assert ( < in4 in7)) (assert ( < in4 in8)) (assert ( < in4 in9)) (assert ( < in4 in10)) (assert ( < in4 in11)) (assert ( < in4 in12)) (assert ( < in4 in13)) (assert ( < in4 in14)) (assert ( < in4 in15)) (assert ( < in4 in16)) (assert ( < in4 in17)) (assert ( < in4 in18)) (assert ( < in5 in6)) (assert ( < in5 in7)) (assert ( < in5 in8)) (assert ( < in5 in9)) (assert ( < in5 in10)) (assert ( < in5 in11)) (assert ( < in5 in12)) (assert ( < in5 in13)) (assert ( < in5 in14)) (assert ( < in5 in15)) (assert ( < in5 in16)) (assert ( < in5 in17)) (assert ( < in5 in18)) (assert ( < in6 in7)) (assert ( < in6 in8)) (assert ( < in6 in9)) (assert ( < in6 in10)) (assert ( < in6 in11)) (assert ( < in6 in12)) (assert ( < in6 in13)) (assert ( < in6 in14)) (assert ( < in6 in15)) (assert ( < in6 in16)) (assert ( < in6 in17)) (assert ( < in6 in18)) (assert ( < in7 in8)) (assert ( < in7 in9)) (assert ( < in7 in10)) (assert ( < in7 in11)) (assert ( < in7 in12)) (assert ( < in7 in13)) (assert ( < in7 in14)) (assert ( < in7 in15)) (assert ( < in7 in16)) (assert ( < in7 in17)) (assert ( < in7 in18)) (assert ( < in8 in9)) (assert ( < in8 in10)) (assert ( < in8 in11)) (assert ( < in8 in12)) (assert ( < in8 in13)) (assert ( < in8 in14)) (assert ( < in8 in15)) (assert ( < in8 in16)) (assert ( < in8 in17)) (assert ( < in8 in18)) (assert ( < in9 in10)) (assert ( < in9 in11)) (assert ( < in9 in12)) (assert ( < in9 in13)) (assert ( < in9 in14)) (assert ( < in9 in15)) (assert ( < in9 in16)) (assert ( < in9 in17)) (assert ( < in9 in18)) (assert ( < in10 in11)) (assert ( < in10 in12)) (assert ( < in10 in13)) (assert ( < in10 in14)) (assert ( < in10 in15)) (assert ( < in10 in16)) (assert ( < in10 in17)) (assert ( < in10 in18)) (assert ( < in11 in12)) (assert ( < in11 in13)) (assert ( < in11 in14)) (assert ( < in11 in15)) (assert ( < in11 in16)) (assert ( < in11 in17)) (assert ( < in11 in18)) (assert ( < in12 in13)) (assert ( < in12 in14)) (assert ( < in12 in15)) (assert ( < in12 in16)) (assert ( < in12 in17)) (assert ( < in12 in18)) (assert ( < in13 in14)) (assert ( < in13 in15)) (assert ( < in13 in16)) (assert ( < in13 in17)) (assert ( < in13 in18)) (assert ( < in14 in15)) (assert ( < in14 in16)) (assert ( < in14 in17)) (assert ( < in14 in18)) (assert ( < in15 in16)) (assert ( < in15 in17)) (assert ( < in15 in18)) (assert ( < in16 in17)) (assert ( < in16 in18)) (assert ( < in17 in18))
(assert (not
(and (and (and (and (and (and (and (and (and  ( <  in0 in18)  ( <  in1 in17))  ( <  in2 in16))  ( <  in3 in15))  ( <  in4 in14))  ( <  in5 in13))  ( <  in6 in12))  ( <  in7 in11))  ( <  in8 in10)))
))
(check-sat)
(pop)
