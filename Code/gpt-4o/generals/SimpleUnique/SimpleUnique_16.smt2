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

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 in1)) (not ( = in0 in2))) (not ( = in0 in3))) (not ( = in0 in4))) (not ( = in0 in5))) (not ( = in0 in6))) (not ( = in0 in7))) (not ( = in0 in8))) (not ( = in0 in9))) (not ( = in0 in10))) (not ( = in0 in11))) (not ( = in0 in12))) (not ( = in0 in13))) (not ( = in0 in14))) (not ( = in0 in15))) (not ( = in1 in2))) (not ( = in1 in3))) (not ( = in1 in4))) (not ( = in1 in5))) (not ( = in1 in6))) (not ( = in1 in7))) (not ( = in1 in8))) (not ( = in1 in9))) (not ( = in1 in10))) (not ( = in1 in11))) (not ( = in1 in12))) (not ( = in1 in13))) (not ( = in1 in14))) (not ( = in1 in15))) (not ( = in2 in3))) (not ( = in2 in4))) (not ( = in2 in5))) (not ( = in2 in6))) (not ( = in2 in7))) (not ( = in2 in8))) (not ( = in2 in9))) (not ( = in2 in10))) (not ( = in2 in11))) (not ( = in2 in12))) (not ( = in2 in13))) (not ( = in2 in14))) (not ( = in2 in15))) (not ( = in3 in4))) (not ( = in3 in5))) (not ( = in3 in6))) (not ( = in3 in7))) (not ( = in3 in8))) (not ( = in3 in9))) (not ( = in3 in10))) (not ( = in3 in11))) (not ( = in3 in12))) (not ( = in3 in13))) (not ( = in3 in14))) (not ( = in3 in15))) (not ( = in4 in5))) (not ( = in4 in6))) (not ( = in4 in7))) (not ( = in4 in8))) (not ( = in4 in9))) (not ( = in4 in10))) (not ( = in4 in11))) (not ( = in4 in12))) (not ( = in4 in13))) (not ( = in4 in14))) (not ( = in4 in15))) (not ( = in5 in6))) (not ( = in5 in7))) (not ( = in5 in8))) (not ( = in5 in9))) (not ( = in5 in10))) (not ( = in5 in11))) (not ( = in5 in12))) (not ( = in5 in13))) (not ( = in5 in14))) (not ( = in5 in15))) (not ( = in6 in7))) (not ( = in6 in8))) (not ( = in6 in9))) (not ( = in6 in10))) (not ( = in6 in11))) (not ( = in6 in12))) (not ( = in6 in13))) (not ( = in6 in14))) (not ( = in6 in15))) (not ( = in7 in8))) (not ( = in7 in9))) (not ( = in7 in10))) (not ( = in7 in11))) (not ( = in7 in12))) (not ( = in7 in13))) (not ( = in7 in14))) (not ( = in7 in15))) (not ( = in8 in9))) (not ( = in8 in10))) (not ( = in8 in11))) (not ( = in8 in12))) (not ( = in8 in13))) (not ( = in8 in14))) (not ( = in8 in15))) (not ( = in9 in10))) (not ( = in9 in11))) (not ( = in9 in12))) (not ( = in9 in13))) (not ( = in9 in14))) (not ( = in9 in15))) (not ( = in10 in11))) (not ( = in10 in12))) (not ( = in10 in13))) (not ( = in10 in14))) (not ( = in10 in15))) (not ( = in11 in12))) (not ( = in11 in13))) (not ( = in11 in14))) (not ( = in11 in15))) (not ( = in12 in13))) (not ( = in12 in14))) (not ( = in12 in15))) (not ( = in13 in14))) (not ( = in13 in15))) (not ( = in14 in15))))
(pop)

; Generated constraints (B):
(push)
(assert (and (not ( = in0 in1)) (not ( = in0 in2)) (not ( = in0 in3)) (not ( = in0 in4)) (not ( = in0 in5)) (not ( = in0 in6)) (not ( = in0 in7)) (not ( = in0 in8)) (not ( = in0 in9)) (not ( = in0 in10)) (not ( = in0 in11)) (not ( = in0 in12)) (not ( = in0 in13)) (not ( = in0 in14)) (not ( = in0 in15)) (not ( = in1 in2)) (not ( = in1 in3)) (not ( = in1 in4)) (not ( = in1 in5)) (not ( = in1 in6)) (not ( = in1 in7)) (not ( = in1 in8)) (not ( = in1 in9)) (not ( = in1 in10)) (not ( = in1 in11)) (not ( = in1 in12)) (not ( = in1 in13)) (not ( = in1 in14)) (not ( = in1 in15)) (not ( = in2 in3)) (not ( = in2 in4)) (not ( = in2 in5)) (not ( = in2 in6)) (not ( = in2 in7)) (not ( = in2 in8)) (not ( = in2 in9)) (not ( = in2 in10)) (not ( = in2 in11)) (not ( = in2 in12)) (not ( = in2 in13)) (not ( = in2 in14)) (not ( = in2 in15)) (not ( = in3 in4)) (not ( = in3 in5)) (not ( = in3 in6)) (not ( = in3 in7)) (not ( = in3 in8)) (not ( = in3 in9)) (not ( = in3 in10)) (not ( = in3 in11)) (not ( = in3 in12)) (not ( = in3 in13)) (not ( = in3 in14)) (not ( = in3 in15)) (not ( = in4 in5)) (not ( = in4 in6)) (not ( = in4 in7)) (not ( = in4 in8)) (not ( = in4 in9)) (not ( = in4 in10)) (not ( = in4 in11)) (not ( = in4 in12)) (not ( = in4 in13)) (not ( = in4 in14)) (not ( = in4 in15)) (not ( = in5 in6)) (not ( = in5 in7)) (not ( = in5 in8)) (not ( = in5 in9)) (not ( = in5 in10)) (not ( = in5 in11)) (not ( = in5 in12)) (not ( = in5 in13)) (not ( = in5 in14)) (not ( = in5 in15)) (not ( = in6 in7)) (not ( = in6 in8)) (not ( = in6 in9)) (not ( = in6 in10)) (not ( = in6 in11)) (not ( = in6 in12)) (not ( = in6 in13)) (not ( = in6 in14)) (not ( = in6 in15)) (not ( = in7 in8)) (not ( = in7 in9)) (not ( = in7 in10)) (not ( = in7 in11)) (not ( = in7 in12)) (not ( = in7 in13)) (not ( = in7 in14)) (not ( = in7 in15)) (not ( = in8 in9)) (not ( = in8 in10)) (not ( = in8 in11)) (not ( = in8 in12)) (not ( = in8 in13)) (not ( = in8 in14)) (not ( = in8 in15)) (not ( = in9 in10)) (not ( = in9 in11)) (not ( = in9 in12)) (not ( = in9 in13)) (not ( = in9 in14)) (not ( = in9 in15)) (not ( = in10 in11)) (not ( = in10 in12)) (not ( = in10 in13)) (not ( = in10 in14)) (not ( = in10 in15)) (not ( = in11 in12)) (not ( = in11 in13)) (not ( = in11 in14)) (not ( = in11 in15)) (not ( = in12 in13)) (not ( = in12 in14)) (not ( = in12 in15)) (not ( = in13 in14)) (not ( = in13 in15)) (not ( = in14 in15))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 in1)) (not ( = in0 in2))) (not ( = in0 in3))) (not ( = in0 in4))) (not ( = in0 in5))) (not ( = in0 in6))) (not ( = in0 in7))) (not ( = in0 in8))) (not ( = in0 in9))) (not ( = in0 in10))) (not ( = in0 in11))) (not ( = in0 in12))) (not ( = in0 in13))) (not ( = in0 in14))) (not ( = in0 in15))) (not ( = in1 in2))) (not ( = in1 in3))) (not ( = in1 in4))) (not ( = in1 in5))) (not ( = in1 in6))) (not ( = in1 in7))) (not ( = in1 in8))) (not ( = in1 in9))) (not ( = in1 in10))) (not ( = in1 in11))) (not ( = in1 in12))) (not ( = in1 in13))) (not ( = in1 in14))) (not ( = in1 in15))) (not ( = in2 in3))) (not ( = in2 in4))) (not ( = in2 in5))) (not ( = in2 in6))) (not ( = in2 in7))) (not ( = in2 in8))) (not ( = in2 in9))) (not ( = in2 in10))) (not ( = in2 in11))) (not ( = in2 in12))) (not ( = in2 in13))) (not ( = in2 in14))) (not ( = in2 in15))) (not ( = in3 in4))) (not ( = in3 in5))) (not ( = in3 in6))) (not ( = in3 in7))) (not ( = in3 in8))) (not ( = in3 in9))) (not ( = in3 in10))) (not ( = in3 in11))) (not ( = in3 in12))) (not ( = in3 in13))) (not ( = in3 in14))) (not ( = in3 in15))) (not ( = in4 in5))) (not ( = in4 in6))) (not ( = in4 in7))) (not ( = in4 in8))) (not ( = in4 in9))) (not ( = in4 in10))) (not ( = in4 in11))) (not ( = in4 in12))) (not ( = in4 in13))) (not ( = in4 in14))) (not ( = in4 in15))) (not ( = in5 in6))) (not ( = in5 in7))) (not ( = in5 in8))) (not ( = in5 in9))) (not ( = in5 in10))) (not ( = in5 in11))) (not ( = in5 in12))) (not ( = in5 in13))) (not ( = in5 in14))) (not ( = in5 in15))) (not ( = in6 in7))) (not ( = in6 in8))) (not ( = in6 in9))) (not ( = in6 in10))) (not ( = in6 in11))) (not ( = in6 in12))) (not ( = in6 in13))) (not ( = in6 in14))) (not ( = in6 in15))) (not ( = in7 in8))) (not ( = in7 in9))) (not ( = in7 in10))) (not ( = in7 in11))) (not ( = in7 in12))) (not ( = in7 in13))) (not ( = in7 in14))) (not ( = in7 in15))) (not ( = in8 in9))) (not ( = in8 in10))) (not ( = in8 in11))) (not ( = in8 in12))) (not ( = in8 in13))) (not ( = in8 in14))) (not ( = in8 in15))) (not ( = in9 in10))) (not ( = in9 in11))) (not ( = in9 in12))) (not ( = in9 in13))) (not ( = in9 in14))) (not ( = in9 in15))) (not ( = in10 in11))) (not ( = in10 in12))) (not ( = in10 in13))) (not ( = in10 in14))) (not ( = in10 in15))) (not ( = in11 in12))) (not ( = in11 in13))) (not ( = in11 in14))) (not ( = in11 in15))) (not ( = in12 in13))) (not ( = in12 in14))) (not ( = in12 in15))) (not ( = in13 in14))) (not ( = in13 in15))) (not ( = in14 in15))))
(assert (not
(and (and (not ( = in0 in1)) (not ( = in0 in2)) (not ( = in0 in3)) (not ( = in0 in4)) (not ( = in0 in5)) (not ( = in0 in6)) (not ( = in0 in7)) (not ( = in0 in8)) (not ( = in0 in9)) (not ( = in0 in10)) (not ( = in0 in11)) (not ( = in0 in12)) (not ( = in0 in13)) (not ( = in0 in14)) (not ( = in0 in15)) (not ( = in1 in2)) (not ( = in1 in3)) (not ( = in1 in4)) (not ( = in1 in5)) (not ( = in1 in6)) (not ( = in1 in7)) (not ( = in1 in8)) (not ( = in1 in9)) (not ( = in1 in10)) (not ( = in1 in11)) (not ( = in1 in12)) (not ( = in1 in13)) (not ( = in1 in14)) (not ( = in1 in15)) (not ( = in2 in3)) (not ( = in2 in4)) (not ( = in2 in5)) (not ( = in2 in6)) (not ( = in2 in7)) (not ( = in2 in8)) (not ( = in2 in9)) (not ( = in2 in10)) (not ( = in2 in11)) (not ( = in2 in12)) (not ( = in2 in13)) (not ( = in2 in14)) (not ( = in2 in15)) (not ( = in3 in4)) (not ( = in3 in5)) (not ( = in3 in6)) (not ( = in3 in7)) (not ( = in3 in8)) (not ( = in3 in9)) (not ( = in3 in10)) (not ( = in3 in11)) (not ( = in3 in12)) (not ( = in3 in13)) (not ( = in3 in14)) (not ( = in3 in15)) (not ( = in4 in5)) (not ( = in4 in6)) (not ( = in4 in7)) (not ( = in4 in8)) (not ( = in4 in9)) (not ( = in4 in10)) (not ( = in4 in11)) (not ( = in4 in12)) (not ( = in4 in13)) (not ( = in4 in14)) (not ( = in4 in15)) (not ( = in5 in6)) (not ( = in5 in7)) (not ( = in5 in8)) (not ( = in5 in9)) (not ( = in5 in10)) (not ( = in5 in11)) (not ( = in5 in12)) (not ( = in5 in13)) (not ( = in5 in14)) (not ( = in5 in15)) (not ( = in6 in7)) (not ( = in6 in8)) (not ( = in6 in9)) (not ( = in6 in10)) (not ( = in6 in11)) (not ( = in6 in12)) (not ( = in6 in13)) (not ( = in6 in14)) (not ( = in6 in15)) (not ( = in7 in8)) (not ( = in7 in9)) (not ( = in7 in10)) (not ( = in7 in11)) (not ( = in7 in12)) (not ( = in7 in13)) (not ( = in7 in14)) (not ( = in7 in15)) (not ( = in8 in9)) (not ( = in8 in10)) (not ( = in8 in11)) (not ( = in8 in12)) (not ( = in8 in13)) (not ( = in8 in14)) (not ( = in8 in15)) (not ( = in9 in10)) (not ( = in9 in11)) (not ( = in9 in12)) (not ( = in9 in13)) (not ( = in9 in14)) (not ( = in9 in15)) (not ( = in10 in11)) (not ( = in10 in12)) (not ( = in10 in13)) (not ( = in10 in14)) (not ( = in10 in15)) (not ( = in11 in12)) (not ( = in11 in13)) (not ( = in11 in14)) (not ( = in11 in15)) (not ( = in12 in13)) (not ( = in12 in14)) (not ( = in12 in15)) (not ( = in13 in14)) (not ( = in13 in15)) (not ( = in14 in15))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (not ( = in0 in1)) (not ( = in0 in2)) (not ( = in0 in3)) (not ( = in0 in4)) (not ( = in0 in5)) (not ( = in0 in6)) (not ( = in0 in7)) (not ( = in0 in8)) (not ( = in0 in9)) (not ( = in0 in10)) (not ( = in0 in11)) (not ( = in0 in12)) (not ( = in0 in13)) (not ( = in0 in14)) (not ( = in0 in15)) (not ( = in1 in2)) (not ( = in1 in3)) (not ( = in1 in4)) (not ( = in1 in5)) (not ( = in1 in6)) (not ( = in1 in7)) (not ( = in1 in8)) (not ( = in1 in9)) (not ( = in1 in10)) (not ( = in1 in11)) (not ( = in1 in12)) (not ( = in1 in13)) (not ( = in1 in14)) (not ( = in1 in15)) (not ( = in2 in3)) (not ( = in2 in4)) (not ( = in2 in5)) (not ( = in2 in6)) (not ( = in2 in7)) (not ( = in2 in8)) (not ( = in2 in9)) (not ( = in2 in10)) (not ( = in2 in11)) (not ( = in2 in12)) (not ( = in2 in13)) (not ( = in2 in14)) (not ( = in2 in15)) (not ( = in3 in4)) (not ( = in3 in5)) (not ( = in3 in6)) (not ( = in3 in7)) (not ( = in3 in8)) (not ( = in3 in9)) (not ( = in3 in10)) (not ( = in3 in11)) (not ( = in3 in12)) (not ( = in3 in13)) (not ( = in3 in14)) (not ( = in3 in15)) (not ( = in4 in5)) (not ( = in4 in6)) (not ( = in4 in7)) (not ( = in4 in8)) (not ( = in4 in9)) (not ( = in4 in10)) (not ( = in4 in11)) (not ( = in4 in12)) (not ( = in4 in13)) (not ( = in4 in14)) (not ( = in4 in15)) (not ( = in5 in6)) (not ( = in5 in7)) (not ( = in5 in8)) (not ( = in5 in9)) (not ( = in5 in10)) (not ( = in5 in11)) (not ( = in5 in12)) (not ( = in5 in13)) (not ( = in5 in14)) (not ( = in5 in15)) (not ( = in6 in7)) (not ( = in6 in8)) (not ( = in6 in9)) (not ( = in6 in10)) (not ( = in6 in11)) (not ( = in6 in12)) (not ( = in6 in13)) (not ( = in6 in14)) (not ( = in6 in15)) (not ( = in7 in8)) (not ( = in7 in9)) (not ( = in7 in10)) (not ( = in7 in11)) (not ( = in7 in12)) (not ( = in7 in13)) (not ( = in7 in14)) (not ( = in7 in15)) (not ( = in8 in9)) (not ( = in8 in10)) (not ( = in8 in11)) (not ( = in8 in12)) (not ( = in8 in13)) (not ( = in8 in14)) (not ( = in8 in15)) (not ( = in9 in10)) (not ( = in9 in11)) (not ( = in9 in12)) (not ( = in9 in13)) (not ( = in9 in14)) (not ( = in9 in15)) (not ( = in10 in11)) (not ( = in10 in12)) (not ( = in10 in13)) (not ( = in10 in14)) (not ( = in10 in15)) (not ( = in11 in12)) (not ( = in11 in13)) (not ( = in11 in14)) (not ( = in11 in15)) (not ( = in12 in13)) (not ( = in12 in14)) (not ( = in12 in15)) (not ( = in13 in14)) (not ( = in13 in15)) (not ( = in14 in15))))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 in1)) (not ( = in0 in2))) (not ( = in0 in3))) (not ( = in0 in4))) (not ( = in0 in5))) (not ( = in0 in6))) (not ( = in0 in7))) (not ( = in0 in8))) (not ( = in0 in9))) (not ( = in0 in10))) (not ( = in0 in11))) (not ( = in0 in12))) (not ( = in0 in13))) (not ( = in0 in14))) (not ( = in0 in15))) (not ( = in1 in2))) (not ( = in1 in3))) (not ( = in1 in4))) (not ( = in1 in5))) (not ( = in1 in6))) (not ( = in1 in7))) (not ( = in1 in8))) (not ( = in1 in9))) (not ( = in1 in10))) (not ( = in1 in11))) (not ( = in1 in12))) (not ( = in1 in13))) (not ( = in1 in14))) (not ( = in1 in15))) (not ( = in2 in3))) (not ( = in2 in4))) (not ( = in2 in5))) (not ( = in2 in6))) (not ( = in2 in7))) (not ( = in2 in8))) (not ( = in2 in9))) (not ( = in2 in10))) (not ( = in2 in11))) (not ( = in2 in12))) (not ( = in2 in13))) (not ( = in2 in14))) (not ( = in2 in15))) (not ( = in3 in4))) (not ( = in3 in5))) (not ( = in3 in6))) (not ( = in3 in7))) (not ( = in3 in8))) (not ( = in3 in9))) (not ( = in3 in10))) (not ( = in3 in11))) (not ( = in3 in12))) (not ( = in3 in13))) (not ( = in3 in14))) (not ( = in3 in15))) (not ( = in4 in5))) (not ( = in4 in6))) (not ( = in4 in7))) (not ( = in4 in8))) (not ( = in4 in9))) (not ( = in4 in10))) (not ( = in4 in11))) (not ( = in4 in12))) (not ( = in4 in13))) (not ( = in4 in14))) (not ( = in4 in15))) (not ( = in5 in6))) (not ( = in5 in7))) (not ( = in5 in8))) (not ( = in5 in9))) (not ( = in5 in10))) (not ( = in5 in11))) (not ( = in5 in12))) (not ( = in5 in13))) (not ( = in5 in14))) (not ( = in5 in15))) (not ( = in6 in7))) (not ( = in6 in8))) (not ( = in6 in9))) (not ( = in6 in10))) (not ( = in6 in11))) (not ( = in6 in12))) (not ( = in6 in13))) (not ( = in6 in14))) (not ( = in6 in15))) (not ( = in7 in8))) (not ( = in7 in9))) (not ( = in7 in10))) (not ( = in7 in11))) (not ( = in7 in12))) (not ( = in7 in13))) (not ( = in7 in14))) (not ( = in7 in15))) (not ( = in8 in9))) (not ( = in8 in10))) (not ( = in8 in11))) (not ( = in8 in12))) (not ( = in8 in13))) (not ( = in8 in14))) (not ( = in8 in15))) (not ( = in9 in10))) (not ( = in9 in11))) (not ( = in9 in12))) (not ( = in9 in13))) (not ( = in9 in14))) (not ( = in9 in15))) (not ( = in10 in11))) (not ( = in10 in12))) (not ( = in10 in13))) (not ( = in10 in14))) (not ( = in10 in15))) (not ( = in11 in12))) (not ( = in11 in13))) (not ( = in11 in14))) (not ( = in11 in15))) (not ( = in12 in13))) (not ( = in12 in14))) (not ( = in12 in15))) (not ( = in13 in14))) (not ( = in13 in15))) (not ( = in14 in15))))
))
(check-sat)
(pop)
