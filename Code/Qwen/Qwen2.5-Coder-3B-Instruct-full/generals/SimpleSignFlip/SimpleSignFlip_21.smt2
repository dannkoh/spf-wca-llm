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
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 in1)  ( <  in1 in2))  ( =  in2 in3))  ( <  in3 in4))  ( =  in4 in5))  ( <  in5 in6))  ( =  in6 in7))  ( <  in7 in8))  ( =  in8 in9))  ( <  in9 in10))  ( =  in10 in11))  ( <  in11 in12))  ( =  in12 in13))  ( <  in13 in14))  ( =  in14 in15))  ( <  in15 in16))  ( =  in16 in17))  ( <  in17 in18))  ( =  in18 in19))  ( <  in19 in20)))
(pop)

; Generated constraints (B):
(push)
(assert (or (= in1 in0) (= (bvadd in0 (bv1) in1) 0)))
(assert (or (= in2 in1) (= (bvadd in1 (bv1) in2) 0)))
(assert (or (= in3 in2) (= (bvadd in2 (bv1) in3) 0)))
(assert (or (= in4 in3) (= (bvadd in3 (bv1) in4) 0)))
(assert (or (= in5 in4) (= (bvadd in4 (bv1) in5) 0)))
(assert (or (= in6 in5) (= (bvadd in5 (bv1) in6) 0)))
(assert (or (= in7 in6) (= (bvadd in6 (bv1) in7) 0)))
(assert (or (= in8 in7) (= (bvadd in7 (bv1) in8) 0)))
(assert (or (= in9 in8) (= (bvadd in8 (bv1) in9) 0)))
(assert (or (= in10 in9) (= (bvadd in9 (bv1) in10) 0)))
(assert (or (= in11 in10) (= (bvadd in10 (bv1) in11) 0)))
(assert (or (= in12 in11) (= (bvadd in11 (bv1) in12) 0)))
(assert (or (= in13 in12) (= (bvadd in12 (bv1) in13) 0)))
(assert (or (= in14 in13) (= (bvadd in13 (bv1) in14) 0)))
(assert (or (= in15 in14) (= (bvadd in14 (bv1) in15) 0)))
(assert (or (= in16 in15) (= (bvadd in15 (bv1) in16) 0)))
(assert (or (= in17 in16) (= (bvadd in16 (bv1) in17) 0)))
(assert (or (= in18 in17) (= (bvadd in17 (bv1) in18) 0)))
(assert (or (= in19 in18) (= (bvadd in18 (bv1) in19) 0)))
(assert (or (= in20 in19) (= (bvadd in19 (bv1) in20) 0)))
(assert (or (= (bvmod in3 in2) 1) (= (bvmod in3 in2) 0)))
(assert (or (= (bvmod in4 in3) 1) (= (bvmod in4 in3) 0)))
(assert (or (= (bvmod in5 in4) 1) (= (bvmod in5 in4) 0)))
(assert (or (= (bvmod in6 in5) 1) (= (bvmod in6 in5) 0)))
(assert (or (= (bvmod in7 in6) 1) (= (bvmod in7 in6) 0)))
(assert (or (= (bvmod in8 in7) 1) (= (bvmod in8 in7) 0)))
(assert (or (= (bvmod in9 in8) 1) (= (bvmod in9 in8) 0)))
(assert (or (= (bvmod in10 in9) 1) (= (bvmod in10 in9) 0)))
(assert (or (= (bvmod in11 in10) 1) (= (bvmod in11 in10) 0)))
(assert (or (= (bvmod in12 in11) 1) (= (bvmod in12 in11) 0)))
(assert (or (= (bvmod in13 in12) 1) (= (bvmod in13 in12) 0)))
(assert (or (= (bvmod in14 in13) 1) (= (bvmod in14 in13) 0)))
(assert (or (= (bvmod in15 in14) 1) (= (bvmod in15 in14) 0)))
(assert (or (= (bvmod in16 in15) 1) (= (bvmod in16 in15) 0)))
(assert (or (= (bvmod in17 in16) 1) (= (bvmod in17 in16) 0)))
(assert (or (= (bvmod in18 in17) 1) (= (bvmod in18 in17) 0)))
(assert (or (= (bvmod in19 in18) 1) (= (bvmod in19 in18) 0)))
(assert (or (= (bvmod in20 in19) 1) (= (bvmod in20 in19) 0)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 in1)  ( <  in1 in2))  ( =  in2 in3))  ( <  in3 in4))  ( =  in4 in5))  ( <  in5 in6))  ( =  in6 in7))  ( <  in7 in8))  ( =  in8 in9))  ( <  in9 in10))  ( =  in10 in11))  ( <  in11 in12))  ( =  in12 in13))  ( <  in13 in14))  ( =  in14 in15))  ( <  in15 in16))  ( =  in16 in17))  ( <  in17 in18))  ( =  in18 in19))  ( <  in19 in20)))
(assert (not
(and (or (= in1 in0) (= (bvadd in0 (bv1) in1) 0)) (or (= in2 in1) (= (bvadd in1 (bv1) in2) 0)) (or (= in3 in2) (= (bvadd in2 (bv1) in3) 0)) (or (= in4 in3) (= (bvadd in3 (bv1) in4) 0)) (or (= in5 in4) (= (bvadd in4 (bv1) in5) 0)) (or (= in6 in5) (= (bvadd in5 (bv1) in6) 0)) (or (= in7 in6) (= (bvadd in6 (bv1) in7) 0)) (or (= in8 in7) (= (bvadd in7 (bv1) in8) 0)) (or (= in9 in8) (= (bvadd in8 (bv1) in9) 0)) (or (= in10 in9) (= (bvadd in9 (bv1) in10) 0)) (or (= in11 in10) (= (bvadd in10 (bv1) in11) 0)) (or (= in12 in11) (= (bvadd in11 (bv1) in12) 0)) (or (= in13 in12) (= (bvadd in12 (bv1) in13) 0)) (or (= in14 in13) (= (bvadd in13 (bv1) in14) 0)) (or (= in15 in14) (= (bvadd in14 (bv1) in15) 0)) (or (= in16 in15) (= (bvadd in15 (bv1) in16) 0)) (or (= in17 in16) (= (bvadd in16 (bv1) in17) 0)) (or (= in18 in17) (= (bvadd in17 (bv1) in18) 0)) (or (= in19 in18) (= (bvadd in18 (bv1) in19) 0)) (or (= in20 in19) (= (bvadd in19 (bv1) in20) 0)) (or (= (bvmod in3 in2) 1) (= (bvmod in3 in2) 0)) (or (= (bvmod in4 in3) 1) (= (bvmod in4 in3) 0)) (or (= (bvmod in5 in4) 1) (= (bvmod in5 in4) 0)) (or (= (bvmod in6 in5) 1) (= (bvmod in6 in5) 0)) (or (= (bvmod in7 in6) 1) (= (bvmod in7 in6) 0)) (or (= (bvmod in8 in7) 1) (= (bvmod in8 in7) 0)) (or (= (bvmod in9 in8) 1) (= (bvmod in9 in8) 0)) (or (= (bvmod in10 in9) 1) (= (bvmod in10 in9) 0)) (or (= (bvmod in11 in10) 1) (= (bvmod in11 in10) 0)) (or (= (bvmod in12 in11) 1) (= (bvmod in12 in11) 0)) (or (= (bvmod in13 in12) 1) (= (bvmod in13 in12) 0)) (or (= (bvmod in14 in13) 1) (= (bvmod in14 in13) 0)) (or (= (bvmod in15 in14) 1) (= (bvmod in15 in14) 0)) (or (= (bvmod in16 in15) 1) (= (bvmod in16 in15) 0)) (or (= (bvmod in17 in16) 1) (= (bvmod in17 in16) 0)) (or (= (bvmod in18 in17) 1) (= (bvmod in18 in17) 0)) (or (= (bvmod in19 in18) 1) (= (bvmod in19 in18) 0)) (or (= (bvmod in20 in19) 1) (= (bvmod in20 in19) 0)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (or (= in1 in0) (= (bvadd in0 (bv1) in1) 0)))
(assert (or (= in2 in1) (= (bvadd in1 (bv1) in2) 0)))
(assert (or (= in3 in2) (= (bvadd in2 (bv1) in3) 0)))
(assert (or (= in4 in3) (= (bvadd in3 (bv1) in4) 0)))
(assert (or (= in5 in4) (= (bvadd in4 (bv1) in5) 0)))
(assert (or (= in6 in5) (= (bvadd in5 (bv1) in6) 0)))
(assert (or (= in7 in6) (= (bvadd in6 (bv1) in7) 0)))
(assert (or (= in8 in7) (= (bvadd in7 (bv1) in8) 0)))
(assert (or (= in9 in8) (= (bvadd in8 (bv1) in9) 0)))
(assert (or (= in10 in9) (= (bvadd in9 (bv1) in10) 0)))
(assert (or (= in11 in10) (= (bvadd in10 (bv1) in11) 0)))
(assert (or (= in12 in11) (= (bvadd in11 (bv1) in12) 0)))
(assert (or (= in13 in12) (= (bvadd in12 (bv1) in13) 0)))
(assert (or (= in14 in13) (= (bvadd in13 (bv1) in14) 0)))
(assert (or (= in15 in14) (= (bvadd in14 (bv1) in15) 0)))
(assert (or (= in16 in15) (= (bvadd in15 (bv1) in16) 0)))
(assert (or (= in17 in16) (= (bvadd in16 (bv1) in17) 0)))
(assert (or (= in18 in17) (= (bvadd in17 (bv1) in18) 0)))
(assert (or (= in19 in18) (= (bvadd in18 (bv1) in19) 0)))
(assert (or (= in20 in19) (= (bvadd in19 (bv1) in20) 0)))
(assert (or (= (bvmod in3 in2) 1) (= (bvmod in3 in2) 0)))
(assert (or (= (bvmod in4 in3) 1) (= (bvmod in4 in3) 0)))
(assert (or (= (bvmod in5 in4) 1) (= (bvmod in5 in4) 0)))
(assert (or (= (bvmod in6 in5) 1) (= (bvmod in6 in5) 0)))
(assert (or (= (bvmod in7 in6) 1) (= (bvmod in7 in6) 0)))
(assert (or (= (bvmod in8 in7) 1) (= (bvmod in8 in7) 0)))
(assert (or (= (bvmod in9 in8) 1) (= (bvmod in9 in8) 0)))
(assert (or (= (bvmod in10 in9) 1) (= (bvmod in10 in9) 0)))
(assert (or (= (bvmod in11 in10) 1) (= (bvmod in11 in10) 0)))
(assert (or (= (bvmod in12 in11) 1) (= (bvmod in12 in11) 0)))
(assert (or (= (bvmod in13 in12) 1) (= (bvmod in13 in12) 0)))
(assert (or (= (bvmod in14 in13) 1) (= (bvmod in14 in13) 0)))
(assert (or (= (bvmod in15 in14) 1) (= (bvmod in15 in14) 0)))
(assert (or (= (bvmod in16 in15) 1) (= (bvmod in16 in15) 0)))
(assert (or (= (bvmod in17 in16) 1) (= (bvmod in17 in16) 0)))
(assert (or (= (bvmod in18 in17) 1) (= (bvmod in18 in17) 0)))
(assert (or (= (bvmod in19 in18) 1) (= (bvmod in19 in18) 0)))
(assert (or (= (bvmod in20 in19) 1) (= (bvmod in20 in19) 0)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 in1)  ( <  in1 in2))  ( =  in2 in3))  ( <  in3 in4))  ( =  in4 in5))  ( <  in5 in6))  ( =  in6 in7))  ( <  in7 in8))  ( =  in8 in9))  ( <  in9 in10))  ( =  in10 in11))  ( <  in11 in12))  ( =  in12 in13))  ( <  in13 in14))  ( =  in14 in15))  ( <  in15 in16))  ( =  in16 in17))  ( <  in17 in18))  ( =  in18 in19))  ( <  in19 in20)))
))
(check-sat)
(pop)
