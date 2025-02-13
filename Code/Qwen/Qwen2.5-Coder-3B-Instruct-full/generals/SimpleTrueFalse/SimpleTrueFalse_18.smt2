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
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0))  ( =  in6 1))  ( =  in7 0))  ( =  in8 1))  ( =  in9 0))  ( =  in10 1))  ( =  in11 0))  ( =  in12 1))  ( =  in13 0))  ( =  in14 1))  ( =  in15 0))  ( =  in16 1))  ( =  in17 0)))
(pop)

; Generated constraints (B):
(push)
(assert (= in0 1))
(assert (= in1 1))
(assert (= in2 1))
(assert (= in3 1))
(assert (= in4 1))
(assert (= in5 1))
(assert (= in6 1))
(assert (= in7 1))
(assert (= in8 1))
(assert (= in9 1))
(assert (= in10 1))
(assert (= in11 1))
(assert (= in12 1))
(assert (= in13 1))
(assert (= in14 1))
(assert (= in15 1))
(assert (= in16 1))
(assert (= in17 1))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0))  ( =  in6 1))  ( =  in7 0))  ( =  in8 1))  ( =  in9 0))  ( =  in10 1))  ( =  in11 0))  ( =  in12 1))  ( =  in13 0))  ( =  in14 1))  ( =  in15 0))  ( =  in16 1))  ( =  in17 0)))
(assert (not
(and (= in0 1) (= in1 1) (= in2 1) (= in3 1) (= in4 1) (= in5 1) (= in6 1) (= in7 1) (= in8 1) (= in9 1) (= in10 1) (= in11 1) (= in12 1) (= in13 1) (= in14 1) (= in15 1) (= in16 1) (= in17 1))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= in0 1))
(assert (= in1 1))
(assert (= in2 1))
(assert (= in3 1))
(assert (= in4 1))
(assert (= in5 1))
(assert (= in6 1))
(assert (= in7 1))
(assert (= in8 1))
(assert (= in9 1))
(assert (= in10 1))
(assert (= in11 1))
(assert (= in12 1))
(assert (= in13 1))
(assert (= in14 1))
(assert (= in15 1))
(assert (= in16 1))
(assert (= in17 1))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in0 1)  ( =  in1 0))  ( =  in2 1))  ( =  in3 0))  ( =  in4 1))  ( =  in5 0))  ( =  in6 1))  ( =  in7 0))  ( =  in8 1))  ( =  in9 0))  ( =  in10 1))  ( =  in11 0))  ( =  in12 1))  ( =  in13 0))  ( =  in14 1))  ( =  in15 0))  ( =  in16 1))  ( =  in17 0)))
))
(check-sat)
(pop)
