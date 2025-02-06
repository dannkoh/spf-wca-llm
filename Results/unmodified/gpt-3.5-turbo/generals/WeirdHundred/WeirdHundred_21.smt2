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
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 1))  ( =  in0 0))  ( >=  in1 100))  ( >=  in2 100))  ( >=  in3 100))  ( >=  in4 100))  ( >=  in5 100))  ( >=  in6 100))  ( >=  in7 100))  ( >=  in8 100))  ( >=  in9 100))  ( >=  in10 100))  ( >=  in11 100))  ( >=  in12 100))  ( >=  in13 100))  ( >=  in14 100))  ( >=  in15 100))  ( >=  in16 100))  ( >=  in17 100))  ( >=  in18 100))  ( >=  in19 100))  ( >=  in20 100)))
(pop)

; Generated constraints (B):
(push)
(assert (and (not (= in0 1)) (= in0 0))  (>= in2 200) (>= in3 300) (>= in4 400) (>= in5 500) (>= in6 600) (>= in7 700) (>= in8 800) (>= in9 900) (>= in10 1000) (>= in11 1100) (>= in12 1200) (>= in13 1300) (>= in14 1400) (>= in15 1500) (>= in16 1600) (>= in17 1700) (>= in18 1800) (>= in19 1900) (>= in20 2000) (>= in21 2100))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 1))  ( =  in0 0))  ( >=  in1 100))  ( >=  in2 100))  ( >=  in3 100))  ( >=  in4 100))  ( >=  in5 100))  ( >=  in6 100))  ( >=  in7 100))  ( >=  in8 100))  ( >=  in9 100))  ( >=  in10 100))  ( >=  in11 100))  ( >=  in12 100))  ( >=  in13 100))  ( >=  in14 100))  ( >=  in15 100))  ( >=  in16 100))  ( >=  in17 100))  ( >=  in18 100))  ( >=  in19 100))  ( >=  in20 100)))
(assert (not
(and (and (not (= in0 1)) (= in0 0))  (>= in2 200) (>= in3 300) (>= in4 400) (>= in5 500) (>= in6 600) (>= in7 700) (>= in8 800) (>= in9 900) (>= in10 1000) (>= in11 1100) (>= in12 1200) (>= in13 1300) (>= in14 1400) (>= in15 1500) (>= in16 1600) (>= in17 1700) (>= in18 1800) (>= in19 1900) (>= in20 2000) (>= in21 2100))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (not (= in0 1)) (= in0 0))  (>= in2 200) (>= in3 300) (>= in4 400) (>= in5 500) (>= in6 600) (>= in7 700) (>= in8 800) (>= in9 900) (>= in10 1000) (>= in11 1100) (>= in12 1200) (>= in13 1300) (>= in14 1400) (>= in15 1500) (>= in16 1600) (>= in17 1700) (>= in18 1800) (>= in19 1900) (>= in20 2000) (>= in21 2100))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 1))  ( =  in0 0))  ( >=  in1 100))  ( >=  in2 100))  ( >=  in3 100))  ( >=  in4 100))  ( >=  in5 100))  ( >=  in6 100))  ( >=  in7 100))  ( >=  in8 100))  ( >=  in9 100))  ( >=  in10 100))  ( >=  in11 100))  ( >=  in12 100))  ( >=  in13 100))  ( >=  in14 100))  ( >=  in15 100))  ( >=  in16 100))  ( >=  in17 100))  ( >=  in18 100))  ( >=  in19 100))  ( >=  in20 100)))
))
(check-sat)
(pop)
