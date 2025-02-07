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
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0))  ( =  in6 1))  ( =  in7 0))  ( =  in8 1))  ( =  in9 0))  ( =  in10 1))  ( =  in11 0))  ( =  in12 1))  ( =  in13 0))  ( =  in14 1))  ( =  in15 0))  ( =  in16 1))  ( =  in17 0))  ( =  in18 1))  ( =  in19 0))  ( =  in20 1)))
(pop)

; Generated constraints (B):
(push)
(assert (= (ite (= in0 1) true false) (ite (= in0 0) false true)) (= (ite (= in1 1) false true) (ite (= in1 0) true false)) (= (ite (= in2 1) true false) (ite (= in2 0) false true)) (= (ite (= in3 1) false true) (ite (= in3 0) true false)) (= (ite (= in4 1) true false) (ite (= in4 0) false true)) (= (ite (= in5 1) false true) (ite (= in5 0) true false)) (= (ite (= in6 1) true false) (ite (= in6 0) false true)) (= (ite (= in7 1) false true) (ite (= in7 0) true false)) (= (ite (= in8 1) true false) (ite (= in8 0) false true)) (= (ite (= in9 1) false true) (ite (= in9 0) true false)) (= (ite (= in10 1) true false) (ite (= in10 0) false true)) (= (ite (= in11 1) false true) (ite (= in11 0) true false)) (= (ite (= in12 1) true false) (ite (= in12 0) false true)) (= (ite (= in13 1) false true) (ite (= in13 0) true false)) (= (ite (= in14 1) true false) (ite (= in14 0) false true)) (= (ite (= in15 1) false true) (ite (= in15 0) true false)) (= (ite (= in16 1) true false) (ite (= in16 0) false true)) (= (ite (= in17 1) false true) (ite (= in17 0) true false)) (= (ite (= in18 1) true false) (ite (= in18 0) false true)) (= (ite (= in19 1) false true) (ite (= in19 0) true false)) (= (ite (= in20 1) true false) (ite (= in20 0) false true)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0))  ( =  in6 1))  ( =  in7 0))  ( =  in8 1))  ( =  in9 0))  ( =  in10 1))  ( =  in11 0))  ( =  in12 1))  ( =  in13 0))  ( =  in14 1))  ( =  in15 0))  ( =  in16 1))  ( =  in17 0))  ( =  in18 1))  ( =  in19 0))  ( =  in20 1)))
(assert (not
(and (= (ite (= in0 1) true false) (ite (= in0 0) false true)) (= (ite (= in1 1) false true) (ite (= in1 0) true false)) (= (ite (= in2 1) true false) (ite (= in2 0) false true)) (= (ite (= in3 1) false true) (ite (= in3 0) true false)) (= (ite (= in4 1) true false) (ite (= in4 0) false true)) (= (ite (= in5 1) false true) (ite (= in5 0) true false)) (= (ite (= in6 1) true false) (ite (= in6 0) false true)) (= (ite (= in7 1) false true) (ite (= in7 0) true false)) (= (ite (= in8 1) true false) (ite (= in8 0) false true)) (= (ite (= in9 1) false true) (ite (= in9 0) true false)) (= (ite (= in10 1) true false) (ite (= in10 0) false true)) (= (ite (= in11 1) false true) (ite (= in11 0) true false)) (= (ite (= in12 1) true false) (ite (= in12 0) false true)) (= (ite (= in13 1) false true) (ite (= in13 0) true false)) (= (ite (= in14 1) true false) (ite (= in14 0) false true)) (= (ite (= in15 1) false true) (ite (= in15 0) true false)) (= (ite (= in16 1) true false) (ite (= in16 0) false true)) (= (ite (= in17 1) false true) (ite (= in17 0) true false)) (= (ite (= in18 1) true false) (ite (= in18 0) false true)) (= (ite (= in19 1) false true) (ite (= in19 0) true false)) (= (ite (= in20 1) true false) (ite (= in20 0) false true)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= (ite (= in0 1) true false) (ite (= in0 0) false true)) (= (ite (= in1 1) false true) (ite (= in1 0) true false)) (= (ite (= in2 1) true false) (ite (= in2 0) false true)) (= (ite (= in3 1) false true) (ite (= in3 0) true false)) (= (ite (= in4 1) true false) (ite (= in4 0) false true)) (= (ite (= in5 1) false true) (ite (= in5 0) true false)) (= (ite (= in6 1) true false) (ite (= in6 0) false true)) (= (ite (= in7 1) false true) (ite (= in7 0) true false)) (= (ite (= in8 1) true false) (ite (= in8 0) false true)) (= (ite (= in9 1) false true) (ite (= in9 0) true false)) (= (ite (= in10 1) true false) (ite (= in10 0) false true)) (= (ite (= in11 1) false true) (ite (= in11 0) true false)) (= (ite (= in12 1) true false) (ite (= in12 0) false true)) (= (ite (= in13 1) false true) (ite (= in13 0) true false)) (= (ite (= in14 1) true false) (ite (= in14 0) false true)) (= (ite (= in15 1) false true) (ite (= in15 0) true false)) (= (ite (= in16 1) true false) (ite (= in16 0) false true)) (= (ite (= in17 1) false true) (ite (= in17 0) true false)) (= (ite (= in18 1) true false) (ite (= in18 0) false true)) (= (ite (= in19 1) false true) (ite (= in19 0) true false)) (= (ite (= in20 1) true false) (ite (= in20 0) false true)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0))  ( =  in6 1))  ( =  in7 0))  ( =  in8 1))  ( =  in9 0))  ( =  in10 1))  ( =  in11 0))  ( =  in12 1))  ( =  in13 0))  ( =  in14 1))  ( =  in15 0))  ( =  in16 1))  ( =  in17 0))  ( =  in18 1))  ( =  in19 0))  ( =  in20 1)))
))
(check-sat)
(pop)
