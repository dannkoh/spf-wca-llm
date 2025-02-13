; Combined SMT for checking equivalence
; Original constants:
(declare-const in2 Int)

; Original constraints (A):
(push)
(assert  ( =  in2 0))
(pop)

; Generated constraints (B):
(push)
(assert (= in2 0))(assert (<= in1 100)))(assert (<= in2 100)))(assert (<= in3 100)))(assert (<= in4 100)))(assert (<= in5 100)))(assert (<= in6 100)))(assert (<= in7 100)))(assert (<= in8 100)))(assert (<= in9 100)))(assert (<= in10 100)))(assert (<= in11 100)))(assert (<= in12 100)))(assert (<= in13 100)))(assert (<= in14 100)))(assert (<= in15 100)))(assert (<= in16 100)))(assert (<= in17 100)))(assert (<= in18 100)))(assert (<= in19 100)))(assert (<= in20 100)))(assert (<= in21 100)))(assert (<= in22 100)))(assert (<= in23 100)))(assert (<= in24 100)))(assert (<= in25 100)))(assert (<= in26 100)))(assert (<= in27 100)))(assert (<= in28 100))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert  ( =  in2 0))
(assert (not
(and (= in2 0))(assert (<= in1 100)))(assert (<= in2 100)))(assert (<= in3 100)))(assert (<= in4 100)))(assert (<= in5 100)))(assert (<= in6 100)))(assert (<= in7 100)))(assert (<= in8 100)))(assert (<= in9 100)))(assert (<= in10 100)))(assert (<= in11 100)))(assert (<= in12 100)))(assert (<= in13 100)))(assert (<= in14 100)))(assert (<= in15 100)))(assert (<= in16 100)))(assert (<= in17 100)))(assert (<= in18 100)))(assert (<= in19 100)))(assert (<= in20 100)))(assert (<= in21 100)))(assert (<= in22 100)))(assert (<= in23 100)))(assert (<= in24 100)))(assert (<= in25 100)))(assert (<= in26 100)))(assert (<= in27 100)))(assert (<= in28 100))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= in2 0))(assert (<= in1 100)))(assert (<= in2 100)))(assert (<= in3 100)))(assert (<= in4 100)))(assert (<= in5 100)))(assert (<= in6 100)))(assert (<= in7 100)))(assert (<= in8 100)))(assert (<= in9 100)))(assert (<= in10 100)))(assert (<= in11 100)))(assert (<= in12 100)))(assert (<= in13 100)))(assert (<= in14 100)))(assert (<= in15 100)))(assert (<= in16 100)))(assert (<= in17 100)))(assert (<= in18 100)))(assert (<= in19 100)))(assert (<= in20 100)))(assert (<= in21 100)))(assert (<= in22 100)))(assert (<= in23 100)))(assert (<= in24 100)))(assert (<= in25 100)))(assert (<= in26 100)))(assert (<= in27 100)))(assert (<= in28 100))
(assert (not
(and  ( =  in2 0))
))
(check-sat)
(pop)
