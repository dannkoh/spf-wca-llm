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

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and  ( <  in0 in13)  ( <  in1 in12))  ( <  in2 in11))  ( <  in3 in10))  ( <  in4 in9))  ( <  in5 in8))  ( <  in6 in7)))
(pop)

; Generated constraints (B):
(push)
(assert ( < in0 in1)) (assert ( < in0 in2)) (assert ( < in0 in3)) (assert ( < in0 in4)) (assert ( < in0 in5)) (assert ( < in0 in6)) (assert ( < in0 in7)) (assert ( < in0 in8)) (assert ( < in0 in9)) (assert ( < in0 in10)) (assert ( < in0 in11)) (assert ( < in0 in12)) (assert ( < in0 in13)) (assert ( < in1 in2)) (assert ( < in1 in3)) (assert ( < in1 in4)) (assert ( < in1 in5)) (assert ( < in1 in6)) (assert ( < in1 in7)) (assert ( < in1 in8)) (assert ( < in1 in9)) (assert ( < in1 in10)) (assert ( < in1 in11)) (assert ( < in1 in12)) (assert ( < in1 in13)) (assert ( < in2 in3)) (assert ( < in2 in4)) (assert ( < in2 in5)) (assert ( < in2 in6)) (assert ( < in2 in7)) (assert ( < in2 in8)) (assert ( < in2 in9)) (assert ( < in2 in10)) (assert ( < in2 in11)) (assert ( < in2 in12)) (assert ( < in2 in13)) (assert ( < in3 in4)) (assert ( < in3 in5)) (assert ( < in3 in6)) (assert ( < in3 in7)) (assert ( < in3 in8)) (assert ( < in3 in9)) (assert ( < in3 in10)) (assert ( < in3 in11)) (assert ( < in3 in12)) (assert ( < in3 in13)) (assert ( < in4 in5)) (assert ( < in4 in6)) (assert ( < in4 in7)) (assert ( < in4 in8)) (assert ( < in4 in9)) (assert ( < in4 in10)) (assert ( < in4 in11)) (assert ( < in4 in12)) (assert ( < in4 in13)) (assert ( < in5 in6)) (assert ( < in5 in7)) (assert ( < in5 in8)) (assert ( < in5 in9)) (assert ( < in5 in10)) (assert ( < in5 in11)) (assert ( < in5 in12)) (assert ( < in5 in13)) (assert ( < in6 in7)) (assert ( < in6 in8)) (assert ( < in6 in9)) (assert ( < in6 in10)) (assert ( < in6 in11)) (assert ( < in6 in12)) (assert ( < in6 in13)) (assert ( < in7 in8)) (assert ( < in7 in9)) (assert ( < in7 in10)) (assert ( < in7 in11)) (assert ( < in7 in12)) (assert ( < in7 in13)) (assert ( < in8 in9)) (assert ( < in8 in10)) (assert ( < in8 in11)) (assert ( < in8 in12)) (assert ( < in8 in13)) (assert ( < in9 in10)) (assert ( < in9 in11)) (assert ( < in9 in12)) (assert ( < in9 in13)) (assert ( < in10 in11)) (assert ( < in10 in12)) (assert ( < in10 in13)) (assert ( < in11 in12)) (assert ( < in11 in13)) (assert ( < in12 in13))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and  ( <  in0 in13)  ( <  in1 in12))  ( <  in2 in11))  ( <  in3 in10))  ( <  in4 in9))  ( <  in5 in8))  ( <  in6 in7)))
(assert (not
(and ( < in0 in1)) (assert ( < in0 in2)) (assert ( < in0 in3)) (assert ( < in0 in4)) (assert ( < in0 in5)) (assert ( < in0 in6)) (assert ( < in0 in7)) (assert ( < in0 in8)) (assert ( < in0 in9)) (assert ( < in0 in10)) (assert ( < in0 in11)) (assert ( < in0 in12)) (assert ( < in0 in13)) (assert ( < in1 in2)) (assert ( < in1 in3)) (assert ( < in1 in4)) (assert ( < in1 in5)) (assert ( < in1 in6)) (assert ( < in1 in7)) (assert ( < in1 in8)) (assert ( < in1 in9)) (assert ( < in1 in10)) (assert ( < in1 in11)) (assert ( < in1 in12)) (assert ( < in1 in13)) (assert ( < in2 in3)) (assert ( < in2 in4)) (assert ( < in2 in5)) (assert ( < in2 in6)) (assert ( < in2 in7)) (assert ( < in2 in8)) (assert ( < in2 in9)) (assert ( < in2 in10)) (assert ( < in2 in11)) (assert ( < in2 in12)) (assert ( < in2 in13)) (assert ( < in3 in4)) (assert ( < in3 in5)) (assert ( < in3 in6)) (assert ( < in3 in7)) (assert ( < in3 in8)) (assert ( < in3 in9)) (assert ( < in3 in10)) (assert ( < in3 in11)) (assert ( < in3 in12)) (assert ( < in3 in13)) (assert ( < in4 in5)) (assert ( < in4 in6)) (assert ( < in4 in7)) (assert ( < in4 in8)) (assert ( < in4 in9)) (assert ( < in4 in10)) (assert ( < in4 in11)) (assert ( < in4 in12)) (assert ( < in4 in13)) (assert ( < in5 in6)) (assert ( < in5 in7)) (assert ( < in5 in8)) (assert ( < in5 in9)) (assert ( < in5 in10)) (assert ( < in5 in11)) (assert ( < in5 in12)) (assert ( < in5 in13)) (assert ( < in6 in7)) (assert ( < in6 in8)) (assert ( < in6 in9)) (assert ( < in6 in10)) (assert ( < in6 in11)) (assert ( < in6 in12)) (assert ( < in6 in13)) (assert ( < in7 in8)) (assert ( < in7 in9)) (assert ( < in7 in10)) (assert ( < in7 in11)) (assert ( < in7 in12)) (assert ( < in7 in13)) (assert ( < in8 in9)) (assert ( < in8 in10)) (assert ( < in8 in11)) (assert ( < in8 in12)) (assert ( < in8 in13)) (assert ( < in9 in10)) (assert ( < in9 in11)) (assert ( < in9 in12)) (assert ( < in9 in13)) (assert ( < in10 in11)) (assert ( < in10 in12)) (assert ( < in10 in13)) (assert ( < in11 in12)) (assert ( < in11 in13)) (assert ( < in12 in13))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert ( < in0 in1)) (assert ( < in0 in2)) (assert ( < in0 in3)) (assert ( < in0 in4)) (assert ( < in0 in5)) (assert ( < in0 in6)) (assert ( < in0 in7)) (assert ( < in0 in8)) (assert ( < in0 in9)) (assert ( < in0 in10)) (assert ( < in0 in11)) (assert ( < in0 in12)) (assert ( < in0 in13)) (assert ( < in1 in2)) (assert ( < in1 in3)) (assert ( < in1 in4)) (assert ( < in1 in5)) (assert ( < in1 in6)) (assert ( < in1 in7)) (assert ( < in1 in8)) (assert ( < in1 in9)) (assert ( < in1 in10)) (assert ( < in1 in11)) (assert ( < in1 in12)) (assert ( < in1 in13)) (assert ( < in2 in3)) (assert ( < in2 in4)) (assert ( < in2 in5)) (assert ( < in2 in6)) (assert ( < in2 in7)) (assert ( < in2 in8)) (assert ( < in2 in9)) (assert ( < in2 in10)) (assert ( < in2 in11)) (assert ( < in2 in12)) (assert ( < in2 in13)) (assert ( < in3 in4)) (assert ( < in3 in5)) (assert ( < in3 in6)) (assert ( < in3 in7)) (assert ( < in3 in8)) (assert ( < in3 in9)) (assert ( < in3 in10)) (assert ( < in3 in11)) (assert ( < in3 in12)) (assert ( < in3 in13)) (assert ( < in4 in5)) (assert ( < in4 in6)) (assert ( < in4 in7)) (assert ( < in4 in8)) (assert ( < in4 in9)) (assert ( < in4 in10)) (assert ( < in4 in11)) (assert ( < in4 in12)) (assert ( < in4 in13)) (assert ( < in5 in6)) (assert ( < in5 in7)) (assert ( < in5 in8)) (assert ( < in5 in9)) (assert ( < in5 in10)) (assert ( < in5 in11)) (assert ( < in5 in12)) (assert ( < in5 in13)) (assert ( < in6 in7)) (assert ( < in6 in8)) (assert ( < in6 in9)) (assert ( < in6 in10)) (assert ( < in6 in11)) (assert ( < in6 in12)) (assert ( < in6 in13)) (assert ( < in7 in8)) (assert ( < in7 in9)) (assert ( < in7 in10)) (assert ( < in7 in11)) (assert ( < in7 in12)) (assert ( < in7 in13)) (assert ( < in8 in9)) (assert ( < in8 in10)) (assert ( < in8 in11)) (assert ( < in8 in12)) (assert ( < in8 in13)) (assert ( < in9 in10)) (assert ( < in9 in11)) (assert ( < in9 in12)) (assert ( < in9 in13)) (assert ( < in10 in11)) (assert ( < in10 in12)) (assert ( < in10 in13)) (assert ( < in11 in12)) (assert ( < in11 in13)) (assert ( < in12 in13))
(assert (not
(and (and (and (and (and (and (and  ( <  in0 in13)  ( <  in1 in12))  ( <  in2 in11))  ( <  in3 in10))  ( <  in4 in9))  ( <  in5 in8))  ( <  in6 in7)))
))
(check-sat)
(pop)
