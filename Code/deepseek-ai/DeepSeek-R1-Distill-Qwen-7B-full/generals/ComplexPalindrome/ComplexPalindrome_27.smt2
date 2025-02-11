; Combined SMT for checking equivalence
; Original constants:
(declare-const in20 Int)
(declare-const in22 Int)
(declare-const in21 Int)
(declare-const in24 Int)
(declare-const in23 Int)
(declare-const in26 Int)
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
(declare-const in12 Int)
(declare-const in15 Int)
(declare-const in14 Int)
(declare-const in17 Int)
(declare-const in16 Int)
(declare-const in19 Int)
(declare-const in18 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in26)  ( <  in1 in25))  ( <  in2 in24))  ( <  in3 in23))  ( <  in4 in22))  ( <  in5 in21))  ( <  in6 in20))  ( <  in7 in19))  ( <  in8 in18))  ( <  in9 in17))  ( <  in10 in16))  ( <  in11 in15))  ( <  in12 in14)))
(pop)

; Generated constraints (B):
(push)
(assert (assert ( < in0 in26))and (assert ( < in1 in25))and (assert ( < in2 in24))and (assert ( < in3 in23))and (assert ( < in4 in22))and (assert ( < in5 in21))and (assert ( < in6 in20))and (assert ( < in7 in19))and (assert ( < in8 in18))and (assert ( < in9 in17))and (assert ( < in10 in16))and (assert ( < in11 in15))and (assert ( < in12 in14)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in26)  ( <  in1 in25))  ( <  in2 in24))  ( <  in3 in23))  ( <  in4 in22))  ( <  in5 in21))  ( <  in6 in20))  ( <  in7 in19))  ( <  in8 in18))  ( <  in9 in17))  ( <  in10 in16))  ( <  in11 in15))  ( <  in12 in14)))
(assert (not
(and (assert ( < in0 in26))and (assert ( < in1 in25))and (assert ( < in2 in24))and (assert ( < in3 in23))and (assert ( < in4 in22))and (assert ( < in5 in21))and (assert ( < in6 in20))and (assert ( < in7 in19))and (assert ( < in8 in18))and (assert ( < in9 in17))and (assert ( < in10 in16))and (assert ( < in11 in15))and (assert ( < in12 in14)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (assert ( < in0 in26))and (assert ( < in1 in25))and (assert ( < in2 in24))and (assert ( < in3 in23))and (assert ( < in4 in22))and (assert ( < in5 in21))and (assert ( < in6 in20))and (assert ( < in7 in19))and (assert ( < in8 in18))and (assert ( < in9 in17))and (assert ( < in10 in16))and (assert ( < in11 in15))and (assert ( < in12 in14)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in26)  ( <  in1 in25))  ( <  in2 in24))  ( <  in3 in23))  ( <  in4 in22))  ( <  in5 in21))  ( <  in6 in20))  ( <  in7 in19))  ( <  in8 in18))  ( <  in9 in17))  ( <  in10 in16))  ( <  in11 in15))  ( <  in12 in14)))
))
(check-sat)
(pop)
