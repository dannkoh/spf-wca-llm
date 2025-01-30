; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in9 Int)
(declare-const in12 Int)
(declare-const in15 Int)
(declare-const in18 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0))  ( =  in12 0))  ( =  in15 0))  ( =  in18 0)))
(pop)

; Generated constraints (B):
(push)
(assert (= in2 0))
(assert (= in5 0))
(assert (= in8 0))
(assert (= in11 0))
(assert (= in14 0))
(assert (= in17 0))
(assert (= in5 0))
(assert (= in8 0))
(assert (= in11 0))
(assert (= in14 0))
(assert (= in17 0))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0))  ( =  in12 0))  ( =  in15 0))  ( =  in18 0)))
(assert (not
(and (= in2 0) (= in5 0) (= in8 0) (= in11 0) (= in14 0) (= in17 0) (= in5 0) (= in8 0) (= in11 0) (= in14 0) (= in17 0))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= in2 0))
(assert (= in5 0))
(assert (= in8 0))
(assert (= in11 0))
(assert (= in14 0))
(assert (= in17 0))
(assert (= in5 0))
(assert (= in8 0))
(assert (= in11 0))
(assert (= in14 0))
(assert (= in17 0))
(assert (not
(and (and (and (and (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0))  ( =  in12 0))  ( =  in15 0))  ( =  in18 0)))
))
(check-sat)
(pop)
