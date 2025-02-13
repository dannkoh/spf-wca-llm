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
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100))  ( <  in4 100))  ( <  in5 100))  ( <  in6 100))  ( <  in7 100))  ( <  in8 100))  ( <  in9 100))  ( <  in10 100))  ( <  in11 100))  ( <  in12 100))  ( <  in13 100))  ( <  in14 100))  ( <  in15 100))  ( <  in16 100))  ( <  in17 100))  ( <  in18 100))  ( <  in19 100))  ( <  in20 100))  ( <  in21 100))  ( <  in22 100))  ( <  in23 100))  ( <  in24 100))  ( <  in25 100)))
(pop)

; Generated constraints (B):
(push)
0 100)1 100)2 100)3 100)4 100)5 100)6 100)7 100)8 100)9 100)10 100)11 100)12 100)13 100)14 100)15 100)16 100)17 100)18 100)19 100)20 100)21 100)22 100)23 100)24 100)25 100))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100))  ( <  in4 100))  ( <  in5 100))  ( <  in6 100))  ( <  in7 100))  ( <  in8 100))  ( <  in9 100))  ( <  in10 100))  ( <  in11 100))  ( <  in12 100))  ( <  in13 100))  ( <  in14 100))  ( <  in15 100))  ( <  in16 100))  ( <  in17 100))  ( <  in18 100))  ( <  in19 100))  ( <  in20 100))  ( <  in21 100))  ( <  in22 100))  ( <  in23 100))  ( <  in24 100))  ( <  in25 100)))
(assert (not
(and )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
0 100)1 100)2 100)3 100)4 100)5 100)6 100)7 100)8 100)9 100)10 100)11 100)12 100)13 100)14 100)15 100)16 100)17 100)18 100)19 100)20 100)21 100)22 100)23 100)24 100)25 100))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( <  in0 100)  ( <  in1 100))  ( <  in2 100))  ( <  in3 100))  ( <  in4 100))  ( <  in5 100))  ( <  in6 100))  ( <  in7 100))  ( <  in8 100))  ( <  in9 100))  ( <  in10 100))  ( <  in11 100))  ( <  in12 100))  ( <  in13 100))  ( <  in14 100))  ( <  in15 100))  ( <  in16 100))  ( <  in17 100))  ( <  in18 100))  ( <  in19 100))  ( <  in20 100))  ( <  in21 100))  ( <  in22 100))  ( <  in23 100))  ( <  in24 100))  ( <  in25 100)))
))
(check-sat)
(pop)
