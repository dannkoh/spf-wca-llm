; Combined SMT for checking equivalence
; Original constants:
(declare-const in2 Int)

; Original constraints (A):
(push)
(assert  ( =  in2 0))
(pop)

; Generated constraints (B):
(push)
(assert (= in2 0))
(assert (= in3 0))
(assert (= in4 0))
(assert (= in5 0))
(assert (= in6 0))
(assert (= in7 0))
(assert (= in8 0))
(assert (= in9 0))
(assert (= in10 0))
(assert (= in11 0))
(assert (= in12 0))
(assert (= in13 0))
(assert (= in14 0))
(assert (= in15 0))
(assert (= in16 0))
(assert (= in17 0))
(assert (= in18 0))
(assert (= in19 0))
(assert (= in20 0))
(assert (= in21 0))
(assert (= in22 0))
(assert (= in23 0))
(assert (= in24 0))
(assert (= in25 0))
(assert (= in26 0))
(assert (= in27 0))
(assert (= in28 0))
(assert (= in29 0))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert  ( =  in2 0))
(assert (not
(and (= in2 0) (= in3 0) (= in4 0) (= in5 0) (= in6 0) (= in7 0) (= in8 0) (= in9 0) (= in10 0) (= in11 0) (= in12 0) (= in13 0) (= in14 0) (= in15 0) (= in16 0) (= in17 0) (= in18 0) (= in19 0) (= in20 0) (= in21 0) (= in22 0) (= in23 0) (= in24 0) (= in25 0) (= in26 0) (= in27 0) (= in28 0) (= in29 0))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= in2 0))
(assert (= in3 0))
(assert (= in4 0))
(assert (= in5 0))
(assert (= in6 0))
(assert (= in7 0))
(assert (= in8 0))
(assert (= in9 0))
(assert (= in10 0))
(assert (= in11 0))
(assert (= in12 0))
(assert (= in13 0))
(assert (= in14 0))
(assert (= in15 0))
(assert (= in16 0))
(assert (= in17 0))
(assert (= in18 0))
(assert (= in19 0))
(assert (= in20 0))
(assert (= in21 0))
(assert (= in22 0))
(assert (= in23 0))
(assert (= in24 0))
(assert (= in25 0))
(assert (= in26 0))
(assert (= in27 0))
(assert (= in28 0))
(assert (= in29 0))
(assert (not
(and  ( =  in2 0))
))
(check-sat)
(pop)
