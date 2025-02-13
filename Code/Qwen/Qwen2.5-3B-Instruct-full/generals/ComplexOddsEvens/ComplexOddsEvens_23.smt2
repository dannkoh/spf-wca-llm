; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in20 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in22 Int)
(declare-const in11 Int)
(declare-const in21 Int)
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
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in21 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7))  ( <  in6 in8))  ( <  in7 in9))  ( <  in8 in10))  ( <  in9 in11))  ( <  in10 in12))  ( <  in11 in13))  ( <  in12 in14))  ( <  in13 in15))  ( <  in14 in16))  ( <  in15 in17))  ( <  in16 in18))  ( <  in17 in19))  ( <  in18 in20))  ( <  in19 in21))  ( <  in20 in22)))
(pop)

; Generated constraints (B):
(push)
((assert (< in1 in2))(assert (< in2 in3))(assert (< in3 in4))(assert (< in4 in5))(assert (< in5 in6))(assert (< in6 in7))(assert (< in7 in8))(assert (< in8 in9))(assert (< in9 in10))(assert (< in10 in11))(assert (< in11 in12))(assert (< in12 in13))(assert (< in13 in14))(assert (< in14 in15))(assert (< in15 in16))(assert (< in16 in17))(assert (< in17 in18))(assert (< in18 in19))(assert (< in19 in20))(assert (< in20 in21))(assert (< in21 in22))(assert (< in22 in23))(assert (< in23 in2)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in21 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7))  ( <  in6 in8))  ( <  in7 in9))  ( <  in8 in10))  ( <  in9 in11))  ( <  in10 in12))  ( <  in11 in13))  ( <  in12 in14))  ( <  in13 in15))  ( <  in14 in16))  ( <  in15 in17))  ( <  in16 in18))  ( <  in17 in19))  ( <  in18 in20))  ( <  in19 in21))  ( <  in20 in22)))
(assert (not
(and )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
((assert (< in1 in2))(assert (< in2 in3))(assert (< in3 in4))(assert (< in4 in5))(assert (< in5 in6))(assert (< in6 in7))(assert (< in7 in8))(assert (< in8 in9))(assert (< in9 in10))(assert (< in10 in11))(assert (< in11 in12))(assert (< in12 in13))(assert (< in13 in14))(assert (< in14 in15))(assert (< in15 in16))(assert (< in16 in17))(assert (< in17 in18))(assert (< in18 in19))(assert (< in19 in20))(assert (< in20 in21))(assert (< in21 in22))(assert (< in22 in23))(assert (< in23 in2)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in21 in0)  ( <  in0 in2))  ( <  in1 in3))  ( <  in2 in4))  ( <  in3 in5))  ( <  in4 in6))  ( <  in5 in7))  ( <  in6 in8))  ( <  in7 in9))  ( <  in8 in10))  ( <  in9 in11))  ( <  in10 in12))  ( <  in11 in13))  ( <  in12 in14))  ( <  in13 in15))  ( <  in14 in16))  ( <  in15 in17))  ( <  in16 in18))  ( <  in17 in19))  ( <  in18 in20))  ( <  in19 in21))  ( <  in20 in22)))
))
(check-sat)
(pop)
