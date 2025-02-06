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
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in2 in5))  ( <  in3 in2))  ( <  in4 in7))  ( <  in5 in4))  ( <  in6 in9))  ( <  in7 in6))  ( <  in8 in11))  ( <  in9 in8))  ( <  in10 in13))  ( <  in11 in10))  ( <  in12 in15))  ( <  in13 in12))  ( <  in14 in17))  ( <  in15 in14))  ( <  in17 in16)))
(pop)

; Generated constraints (B):
(push)
(assert (not (< in0 in1)))(assert (and (< in1 in2))(assert (and (< in2 in3) (< in2 in4))(assert (and (< in3 in4) (< in3 in5) (< in3 in6))(assert (and (< in4 in5) (< in4 in6) (< in4 in7) (< in4 in8))(assert (and (< in5 in6) (< in5 in7) (< in5 in8) (< in5 in9) (< in5 in10))(assert (and (< in6 in7) (< in6 in8) (< in6 in9) (< in6 in10) (< in6 in11) (< in6 in12))(assert (and (< in7 in8) (< in7 in9) (< in7 in10) (< in7 in11) (< in7 in12) (< in7 in13) (< in7 in14))(assert (and (< in8 in9) (< in8 in10) (< in8 in11) (< in8 in12) (< in8 in13) (< in8 in14) (< in8 in15) (< in8 in16))(assert (and (< in9 in10) (< in9 in11) (< in9 in12) (< in9 in13) (< in9 in14) (< in9 in15) (< in9 in16) (< in9 in17) (< in9 in18))(assert (and (< in10 in11) (< in10 in12) (< in10 in13) (< in10 in14) (< in10 in15) (< in10 in16) (< in10 in17) (< in10 in18) (< in10 in19) (< in10 in20))(assert (and (< in11 in12) (< in11 in13) (< in11 in14) (< in11 in15) (< in11 in16) (< in11 in17) (< in11 in18) (< in11 in19) (< in11 in20) (< in11 in21) (< in11 in22))(assert (and (< in12 in13) (< in12 in14) (< in12 in15) (< in12 in16) (< in12 in17) (< in12 in18) (< in12 in19) (< in12 in20) (< in12 in21) (< in12 in22) (< in12 in23) (< in12 in24))(assert (and (< in13 in14) (< in13 in15) (< in13 in16) (< in13 in17) (< in13 in18) (< in13 in19) (< in13 in20) (< in13 in21) (< in13 in22) (< in13 in23) (< in13 in24) (< in13 in25) (< in13 in26))(assert (and (< in14 in15) (< in14 in16) (< in14 in17) (< in14 in18) (< in14 in19) (< in14 in20) (< in14 in21) (< in14 in22) (< in14 in23) (< in14 in24) (< in14 in25) (< in14 in26) (< in14 in27) (< in14 in28))(assert (and (< in15 in16) (< in15 in17) (< in15 in18) (< in15 in19) (< in15 in20) (< in15 in21) (< in15 in22) (< in15 in23) (< in15 in24) (< in15 in25) (< in15 in26) (< in15 in27) (< in15 in28) (< in15 in29) (< in15 in30))(assert (and (< in16 in17) (< in16 in18) (< in16 in19) (< in16 in20) (< in16 in21) (< in16 in22) (< in16 in23) (< in16 in24) (< in16 in25) (< in16 in26) (< in16 in27) (< in16 in28) (< in16 in29) (< in16 in30) (< in16 in31) (< in16 in32))(assert (and (< in17 in18) (< in17 in19) (< in17 in20) (< in17 in21) (< in17 in22) (< in17 in23) (< in17 in24) (< in17 in25) (< in17 in26) (< in17 in27) (< in17 in28) (< in17 in29) (< in17 in30) (< in17 in31) (< in17 in32) (< in17 in33) (< in17 in34))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in2 in5))  ( <  in3 in2))  ( <  in4 in7))  ( <  in5 in4))  ( <  in6 in9))  ( <  in7 in6))  ( <  in8 in11))  ( <  in9 in8))  ( <  in10 in13))  ( <  in11 in10))  ( <  in12 in15))  ( <  in13 in12))  ( <  in14 in17))  ( <  in15 in14))  ( <  in17 in16)))
(assert (not
(and (not (< in0 in1)))(assert (and (< in1 in2))(assert (and (< in2 in3) (< in2 in4))(assert (and (< in3 in4) (< in3 in5) (< in3 in6))(assert (and (< in4 in5) (< in4 in6) (< in4 in7) (< in4 in8))(assert (and (< in5 in6) (< in5 in7) (< in5 in8) (< in5 in9) (< in5 in10))(assert (and (< in6 in7) (< in6 in8) (< in6 in9) (< in6 in10) (< in6 in11) (< in6 in12))(assert (and (< in7 in8) (< in7 in9) (< in7 in10) (< in7 in11) (< in7 in12) (< in7 in13) (< in7 in14))(assert (and (< in8 in9) (< in8 in10) (< in8 in11) (< in8 in12) (< in8 in13) (< in8 in14) (< in8 in15) (< in8 in16))(assert (and (< in9 in10) (< in9 in11) (< in9 in12) (< in9 in13) (< in9 in14) (< in9 in15) (< in9 in16) (< in9 in17) (< in9 in18))(assert (and (< in10 in11) (< in10 in12) (< in10 in13) (< in10 in14) (< in10 in15) (< in10 in16) (< in10 in17) (< in10 in18) (< in10 in19) (< in10 in20))(assert (and (< in11 in12) (< in11 in13) (< in11 in14) (< in11 in15) (< in11 in16) (< in11 in17) (< in11 in18) (< in11 in19) (< in11 in20) (< in11 in21) (< in11 in22))(assert (and (< in12 in13) (< in12 in14) (< in12 in15) (< in12 in16) (< in12 in17) (< in12 in18) (< in12 in19) (< in12 in20) (< in12 in21) (< in12 in22) (< in12 in23) (< in12 in24))(assert (and (< in13 in14) (< in13 in15) (< in13 in16) (< in13 in17) (< in13 in18) (< in13 in19) (< in13 in20) (< in13 in21) (< in13 in22) (< in13 in23) (< in13 in24) (< in13 in25) (< in13 in26))(assert (and (< in14 in15) (< in14 in16) (< in14 in17) (< in14 in18) (< in14 in19) (< in14 in20) (< in14 in21) (< in14 in22) (< in14 in23) (< in14 in24) (< in14 in25) (< in14 in26) (< in14 in27) (< in14 in28))(assert (and (< in15 in16) (< in15 in17) (< in15 in18) (< in15 in19) (< in15 in20) (< in15 in21) (< in15 in22) (< in15 in23) (< in15 in24) (< in15 in25) (< in15 in26) (< in15 in27) (< in15 in28) (< in15 in29) (< in15 in30))(assert (and (< in16 in17) (< in16 in18) (< in16 in19) (< in16 in20) (< in16 in21) (< in16 in22) (< in16 in23) (< in16 in24) (< in16 in25) (< in16 in26) (< in16 in27) (< in16 in28) (< in16 in29) (< in16 in30) (< in16 in31) (< in16 in32))(assert (and (< in17 in18) (< in17 in19) (< in17 in20) (< in17 in21) (< in17 in22) (< in17 in23) (< in17 in24) (< in17 in25) (< in17 in26) (< in17 in27) (< in17 in28) (< in17 in29) (< in17 in30) (< in17 in31) (< in17 in32) (< in17 in33) (< in17 in34))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (not (< in0 in1)))(assert (and (< in1 in2))(assert (and (< in2 in3) (< in2 in4))(assert (and (< in3 in4) (< in3 in5) (< in3 in6))(assert (and (< in4 in5) (< in4 in6) (< in4 in7) (< in4 in8))(assert (and (< in5 in6) (< in5 in7) (< in5 in8) (< in5 in9) (< in5 in10))(assert (and (< in6 in7) (< in6 in8) (< in6 in9) (< in6 in10) (< in6 in11) (< in6 in12))(assert (and (< in7 in8) (< in7 in9) (< in7 in10) (< in7 in11) (< in7 in12) (< in7 in13) (< in7 in14))(assert (and (< in8 in9) (< in8 in10) (< in8 in11) (< in8 in12) (< in8 in13) (< in8 in14) (< in8 in15) (< in8 in16))(assert (and (< in9 in10) (< in9 in11) (< in9 in12) (< in9 in13) (< in9 in14) (< in9 in15) (< in9 in16) (< in9 in17) (< in9 in18))(assert (and (< in10 in11) (< in10 in12) (< in10 in13) (< in10 in14) (< in10 in15) (< in10 in16) (< in10 in17) (< in10 in18) (< in10 in19) (< in10 in20))(assert (and (< in11 in12) (< in11 in13) (< in11 in14) (< in11 in15) (< in11 in16) (< in11 in17) (< in11 in18) (< in11 in19) (< in11 in20) (< in11 in21) (< in11 in22))(assert (and (< in12 in13) (< in12 in14) (< in12 in15) (< in12 in16) (< in12 in17) (< in12 in18) (< in12 in19) (< in12 in20) (< in12 in21) (< in12 in22) (< in12 in23) (< in12 in24))(assert (and (< in13 in14) (< in13 in15) (< in13 in16) (< in13 in17) (< in13 in18) (< in13 in19) (< in13 in20) (< in13 in21) (< in13 in22) (< in13 in23) (< in13 in24) (< in13 in25) (< in13 in26))(assert (and (< in14 in15) (< in14 in16) (< in14 in17) (< in14 in18) (< in14 in19) (< in14 in20) (< in14 in21) (< in14 in22) (< in14 in23) (< in14 in24) (< in14 in25) (< in14 in26) (< in14 in27) (< in14 in28))(assert (and (< in15 in16) (< in15 in17) (< in15 in18) (< in15 in19) (< in15 in20) (< in15 in21) (< in15 in22) (< in15 in23) (< in15 in24) (< in15 in25) (< in15 in26) (< in15 in27) (< in15 in28) (< in15 in29) (< in15 in30))(assert (and (< in16 in17) (< in16 in18) (< in16 in19) (< in16 in20) (< in16 in21) (< in16 in22) (< in16 in23) (< in16 in24) (< in16 in25) (< in16 in26) (< in16 in27) (< in16 in28) (< in16 in29) (< in16 in30) (< in16 in31) (< in16 in32))(assert (and (< in17 in18) (< in17 in19) (< in17 in20) (< in17 in21) (< in17 in22) (< in17 in23) (< in17 in24) (< in17 in25) (< in17 in26) (< in17 in27) (< in17 in28) (< in17 in29) (< in17 in30) (< in17 in31) (< in17 in32) (< in17 in33) (< in17 in34))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in3)  ( <  in1 in0))  ( <  in2 in5))  ( <  in3 in2))  ( <  in4 in7))  ( <  in5 in4))  ( <  in6 in9))  ( <  in7 in6))  ( <  in8 in11))  ( <  in9 in8))  ( <  in10 in13))  ( <  in11 in10))  ( <  in12 in15))  ( <  in13 in12))  ( <  in14 in17))  ( <  in15 in14))  ( <  in17 in16)))
))
(check-sat)
(pop)
