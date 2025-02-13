; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in21 Int)
(declare-const in9 Int)
(declare-const in24 Int)
(declare-const in12 Int)
(declare-const in15 Int)
(declare-const in27 Int)
(declare-const in18 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0))  ( =  in12 0))  ( =  in15 0))  ( =  in18 0))  ( =  in21 0))  ( =  in24 0))  ( =  in27 0)))
(pop)

; Generated constraints (B):
(push)
(assert (or (< in1 100) (> in1 -100)))
(assert (or (< in2 100) (> in2 -100)))
(assert (= in3 0))
(assert (or (< in4 100) (> in4 -100)))
(assert (or (< in5 100) (> in5 -100)))
(assert (= in6 0))
(assert (or (< in7 100) (> in7 -100)))
(assert (or (< in8 100) (> in8 -100)))
(assert (= in9 0))
(assert (or (< in10 100) (> in10 -100)))
(assert (or (< in11 100) (> in11 -100)))
(assert (= in12 0))
(assert (or (< in13 100) (> in13 -100)))
(assert (or (< in14 100) (> in14 -100)))
(assert (= in15 0))
(assert (or (< in16 100) (> in16 -100)))
(assert (or (< in17 100) (> in17 -100)))
(assert (= in18 0))
(assert (or (< in19 100) (> in19 -100)))
(assert (or (< in20 100) (> in20 -100)))
(assert (= in21 0))
(assert (or (< in22 100) (> in22 -100)))
(assert (or (< in23 100) (> in23 -100)))
(assert (= in24 0))
(assert (or (< in25 100) (> in25 -100)))
(assert (or (< in26 100) (> in26 -100)))
(assert (= in27 0))
(assert (or (< in28 100) (> in28 -100)))
(assert (or (< in29 100) (> in29 -100)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0))  ( =  in12 0))  ( =  in15 0))  ( =  in18 0))  ( =  in21 0))  ( =  in24 0))  ( =  in27 0)))
(assert (not
(and (or (< in1 100) (> in1 -100)) (or (< in2 100) (> in2 -100)) (= in3 0) (or (< in4 100) (> in4 -100)) (or (< in5 100) (> in5 -100)) (= in6 0) (or (< in7 100) (> in7 -100)) (or (< in8 100) (> in8 -100)) (= in9 0) (or (< in10 100) (> in10 -100)) (or (< in11 100) (> in11 -100)) (= in12 0) (or (< in13 100) (> in13 -100)) (or (< in14 100) (> in14 -100)) (= in15 0) (or (< in16 100) (> in16 -100)) (or (< in17 100) (> in17 -100)) (= in18 0) (or (< in19 100) (> in19 -100)) (or (< in20 100) (> in20 -100)) (= in21 0) (or (< in22 100) (> in22 -100)) (or (< in23 100) (> in23 -100)) (= in24 0) (or (< in25 100) (> in25 -100)) (or (< in26 100) (> in26 -100)) (= in27 0) (or (< in28 100) (> in28 -100)) (or (< in29 100) (> in29 -100)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (or (< in1 100) (> in1 -100)))
(assert (or (< in2 100) (> in2 -100)))
(assert (= in3 0))
(assert (or (< in4 100) (> in4 -100)))
(assert (or (< in5 100) (> in5 -100)))
(assert (= in6 0))
(assert (or (< in7 100) (> in7 -100)))
(assert (or (< in8 100) (> in8 -100)))
(assert (= in9 0))
(assert (or (< in10 100) (> in10 -100)))
(assert (or (< in11 100) (> in11 -100)))
(assert (= in12 0))
(assert (or (< in13 100) (> in13 -100)))
(assert (or (< in14 100) (> in14 -100)))
(assert (= in15 0))
(assert (or (< in16 100) (> in16 -100)))
(assert (or (< in17 100) (> in17 -100)))
(assert (= in18 0))
(assert (or (< in19 100) (> in19 -100)))
(assert (or (< in20 100) (> in20 -100)))
(assert (= in21 0))
(assert (or (< in22 100) (> in22 -100)))
(assert (or (< in23 100) (> in23 -100)))
(assert (= in24 0))
(assert (or (< in25 100) (> in25 -100)))
(assert (or (< in26 100) (> in26 -100)))
(assert (= in27 0))
(assert (or (< in28 100) (> in28 -100)))
(assert (or (< in29 100) (> in29 -100)))
(assert (not
(and (and (and (and (and (and (and (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0))  ( =  in12 0))  ( =  in15 0))  ( =  in18 0))  ( =  in21 0))  ( =  in24 0))  ( =  in27 0)))
))
(check-sat)
(pop)
