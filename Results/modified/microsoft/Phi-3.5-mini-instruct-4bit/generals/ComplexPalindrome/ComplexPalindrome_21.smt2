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
(declare-const in20 Int)
(declare-const in7 Int)
(declare-const in11 Int)
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
(assert (and (and (and (and (and (and (and (and (and  ( <  in0 in20)  ( <  in1 in19))  ( <  in2 in18))  ( <  in3 in17))  ( <  in4 in16))  ( <  in5 in15))  ( <  in6 in14))  ( <  in7 in13))  ( <  in8 in12))  ( <  in9 in11)))
(pop)

; Generated constraints (B):
(push)
(assert (and  (>= in0 in20)  (>= in1 in19)  (>= in2 in18)  (>= in3 in17)  (>= in4 in16)  (>= in5 in15)  (>= in6 in14)  (>= in7 in13)  (>= in8 in12)  (>= in9 in11)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and  ( <  in0 in20)  ( <  in1 in19))  ( <  in2 in18))  ( <  in3 in17))  ( <  in4 in16))  ( <  in5 in15))  ( <  in6 in14))  ( <  in7 in13))  ( <  in8 in12))  ( <  in9 in11)))
(assert (not
(and (and  (>= in0 in20)  (>= in1 in19)  (>= in2 in18)  (>= in3 in17)  (>= in4 in16)  (>= in5 in15)  (>= in6 in14)  (>= in7 in13)  (>= in8 in12)  (>= in9 in11)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and  (>= in0 in20)  (>= in1 in19)  (>= in2 in18)  (>= in3 in17)  (>= in4 in16)  (>= in5 in15)  (>= in6 in14)  (>= in7 in13)  (>= in8 in12)  (>= in9 in11)))
(assert (not
(and (and (and (and (and (and (and (and (and (and  ( <  in0 in20)  ( <  in1 in19))  ( <  in2 in18))  ( <  in3 in17))  ( <  in4 in16))  ( <  in5 in15))  ( <  in6 in14))  ( <  in7 in13))  ( <  in8 in12))  ( <  in9 in11)))
))
(check-sat)
(pop)
