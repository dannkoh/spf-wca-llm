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
(declare-const in19 Int)
(declare-const in18 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 1))  ( =  in0 0))  ( >=  in1 100))  ( >=  in2 100))  ( >=  in3 100))  ( >=  in4 100))  ( >=  in5 100))  ( >=  in6 100))  ( >=  in7 100))  ( >=  in8 100))  ( >=  in9 100))  ( >=  in10 100))  ( >=  in11 100))  ( >=  in12 100))  ( >=  in13 100))  ( >=  in14 100))  ( >=  in15 100))  ( >=  in16 100))  ( >=  in17 100))  ( >=  in18 100))  ( >=  in19 100)))
(pop)

; Generated constraints (B):
(push)
(assert (and (not (= in0 1)) (= in0 0)))(assert (>= in1 100)) (assert (>= in2 100)) (assert (distinct in2 in1))(assert (>= in3 100)) (assert (distinct in3 in2))(assert (>= in4 100)) (assert (distinct in4 in3))(assert (>= in5 100)) (assert (distinct in5 in4))(assert (>= in6 100)) (assert (distinct in6 in5))(assert (>= in7 100)) (assert (distinct in7 in6))(assert (>= in8 100)) (assert (distinct in8 in7))(assert (>= in9 100)) (assert (distinct in9 in8))(assert (>= in10 100)) (assert (distinct in10 in9))(assert (>= in11 100)) (assert (distinct in11 in10))(assert (>= in12 100)) (assert (distinct in12 in11))(assert (>= in13 100)) (assert (distinct in13 in12))(assert (>= in14 100)) (assert (distinct in14 in13))(assert (>= in15 100)) (assert (distinct in15 in14))(assert (>= in16 100)) (assert (distinct in16 in15))(assert (>= in17 100)) (assert (distinct in17 in16))(assert (>= in18 100)) (assert (distinct in18 in17))(assert (>= in19 100)) (assert (distinct in19 in18))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 1))  ( =  in0 0))  ( >=  in1 100))  ( >=  in2 100))  ( >=  in3 100))  ( >=  in4 100))  ( >=  in5 100))  ( >=  in6 100))  ( >=  in7 100))  ( >=  in8 100))  ( >=  in9 100))  ( >=  in10 100))  ( >=  in11 100))  ( >=  in12 100))  ( >=  in13 100))  ( >=  in14 100))  ( >=  in15 100))  ( >=  in16 100))  ( >=  in17 100))  ( >=  in18 100))  ( >=  in19 100)))
(assert (not
(and (and (not (= in0 1)) (= in0 0)))(assert (>= in1 100)) (assert (>= in2 100)) (assert (distinct in2 in1))(assert (>= in3 100)) (assert (distinct in3 in2))(assert (>= in4 100)) (assert (distinct in4 in3))(assert (>= in5 100)) (assert (distinct in5 in4))(assert (>= in6 100)) (assert (distinct in6 in5))(assert (>= in7 100)) (assert (distinct in7 in6))(assert (>= in8 100)) (assert (distinct in8 in7))(assert (>= in9 100)) (assert (distinct in9 in8))(assert (>= in10 100)) (assert (distinct in10 in9))(assert (>= in11 100)) (assert (distinct in11 in10))(assert (>= in12 100)) (assert (distinct in12 in11))(assert (>= in13 100)) (assert (distinct in13 in12))(assert (>= in14 100)) (assert (distinct in14 in13))(assert (>= in15 100)) (assert (distinct in15 in14))(assert (>= in16 100)) (assert (distinct in16 in15))(assert (>= in17 100)) (assert (distinct in17 in16))(assert (>= in18 100)) (assert (distinct in18 in17))(assert (>= in19 100)) (assert (distinct in19 in18))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (not (= in0 1)) (= in0 0)))(assert (>= in1 100)) (assert (>= in2 100)) (assert (distinct in2 in1))(assert (>= in3 100)) (assert (distinct in3 in2))(assert (>= in4 100)) (assert (distinct in4 in3))(assert (>= in5 100)) (assert (distinct in5 in4))(assert (>= in6 100)) (assert (distinct in6 in5))(assert (>= in7 100)) (assert (distinct in7 in6))(assert (>= in8 100)) (assert (distinct in8 in7))(assert (>= in9 100)) (assert (distinct in9 in8))(assert (>= in10 100)) (assert (distinct in10 in9))(assert (>= in11 100)) (assert (distinct in11 in10))(assert (>= in12 100)) (assert (distinct in12 in11))(assert (>= in13 100)) (assert (distinct in13 in12))(assert (>= in14 100)) (assert (distinct in14 in13))(assert (>= in15 100)) (assert (distinct in15 in14))(assert (>= in16 100)) (assert (distinct in16 in15))(assert (>= in17 100)) (assert (distinct in17 in16))(assert (>= in18 100)) (assert (distinct in18 in17))(assert (>= in19 100)) (assert (distinct in19 in18))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 1))  ( =  in0 0))  ( >=  in1 100))  ( >=  in2 100))  ( >=  in3 100))  ( >=  in4 100))  ( >=  in5 100))  ( >=  in6 100))  ( >=  in7 100))  ( >=  in8 100))  ( >=  in9 100))  ( >=  in10 100))  ( >=  in11 100))  ( >=  in12 100))  ( >=  in13 100))  ( >=  in14 100))  ( >=  in15 100))  ( >=  in16 100))  ( >=  in17 100))  ( >=  in18 100))  ( >=  in19 100)))
))
(check-sat)
(pop)
