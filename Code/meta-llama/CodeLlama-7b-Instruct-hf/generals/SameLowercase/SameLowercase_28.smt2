; Combined SMT for checking equivalence
; Original constants:
(declare-const in20 Int)
(declare-const in22 Int)
(declare-const in21 Int)
(declare-const in24 Int)
(declare-const in23 Int)
(declare-const in26 Int)
(declare-const in25 Int)
(declare-const in27 Int)
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
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122))  ( >=  in10 97))  ( <=  in10 122))  ( >=  in11 97))  ( <=  in11 122))  ( >=  in12 97))  ( <=  in12 122))  ( >=  in13 97))  ( <=  in13 122))  ( >=  in14 97))  ( <=  in14 122))  ( >=  in15 97))  ( <=  in15 122))  ( >=  in16 97))  ( <=  in16 122))  ( >=  in17 97))  ( <=  in17 122))  ( >=  in18 97))  ( <=  in18 122))  ( >=  in19 97))  ( <=  in19 122))  ( >=  in20 97))  ( <=  in20 122))  ( >=  in21 97))  ( <=  in21 122))  ( >=  in22 97))  ( <=  in22 122))  ( >=  in23 97))  ( <=  in23 122))  ( >=  in24 97))  ( <=  in24 122))  ( >=  in25 97))  ( <=  in25 122))  ( >=  in26 97))  ( <=  in26 122))  ( >=  in27 97))  ( <=  in27 122)))
(pop)

; Generated constraints (B):
(push)
(assert (and (>= in0 97) (<= in0 122)))(assert (and (>= in1 97) (<= in1 122)))(assert (and (>= in2 97) (<= in2 122)))(assert (and (>= in3 97) (<= in3 122)))(assert (and (>= in4 97) (<= in4 122)))(assert (and (>= in5 97) (<= in5 122)))(assert (and (>= in6 97) (<= in6 122)))(assert (and (>= in7 97) (<= in7 122)))(assert (and (>= in8 97) (<= in8 122)))(assert (and (>= in9 97) (<= in9 122)))(assert (and (>= in10 97) (<= in10 122)))(assert (and (>= in11 97) (<= in11 122)))(assert (and (>= in12 97) (<= in12 122)))(assert (and (>= in13 97) (<= in13 122)))(assert (and (>= in14 97) (<= in14 122)))(assert (and (>= in15 97) (<= in15 122)))(assert (and (>= in16 97) (<= in16 122)))(assert (and (>= in17 97) (<= in17 122)))(assert (and (>= in18 97) (<= in18 122)))(assert (and (>= in19 97) (<= in19 122)))(assert (and (>= in20 97) (<= in20 122)))(assert (and (>= in21 97) (<= in21 122)))(assert (and (>= in22 97) (<= in22 122)))(assert (and (>= in23 97) (<= in23 122)))(assert (and (>= in24 97) (<= in24 122)))(assert (and (>= in25 97) (<= in25 122)))(assert (and (>= in26 97) (<= in26 122)))(assert (and (>= in27 97) (<= in27 122)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122))  ( >=  in10 97))  ( <=  in10 122))  ( >=  in11 97))  ( <=  in11 122))  ( >=  in12 97))  ( <=  in12 122))  ( >=  in13 97))  ( <=  in13 122))  ( >=  in14 97))  ( <=  in14 122))  ( >=  in15 97))  ( <=  in15 122))  ( >=  in16 97))  ( <=  in16 122))  ( >=  in17 97))  ( <=  in17 122))  ( >=  in18 97))  ( <=  in18 122))  ( >=  in19 97))  ( <=  in19 122))  ( >=  in20 97))  ( <=  in20 122))  ( >=  in21 97))  ( <=  in21 122))  ( >=  in22 97))  ( <=  in22 122))  ( >=  in23 97))  ( <=  in23 122))  ( >=  in24 97))  ( <=  in24 122))  ( >=  in25 97))  ( <=  in25 122))  ( >=  in26 97))  ( <=  in26 122))  ( >=  in27 97))  ( <=  in27 122)))
(assert (not
(and (and (>= in0 97) (<= in0 122)))(assert (and (>= in1 97) (<= in1 122)))(assert (and (>= in2 97) (<= in2 122)))(assert (and (>= in3 97) (<= in3 122)))(assert (and (>= in4 97) (<= in4 122)))(assert (and (>= in5 97) (<= in5 122)))(assert (and (>= in6 97) (<= in6 122)))(assert (and (>= in7 97) (<= in7 122)))(assert (and (>= in8 97) (<= in8 122)))(assert (and (>= in9 97) (<= in9 122)))(assert (and (>= in10 97) (<= in10 122)))(assert (and (>= in11 97) (<= in11 122)))(assert (and (>= in12 97) (<= in12 122)))(assert (and (>= in13 97) (<= in13 122)))(assert (and (>= in14 97) (<= in14 122)))(assert (and (>= in15 97) (<= in15 122)))(assert (and (>= in16 97) (<= in16 122)))(assert (and (>= in17 97) (<= in17 122)))(assert (and (>= in18 97) (<= in18 122)))(assert (and (>= in19 97) (<= in19 122)))(assert (and (>= in20 97) (<= in20 122)))(assert (and (>= in21 97) (<= in21 122)))(assert (and (>= in22 97) (<= in22 122)))(assert (and (>= in23 97) (<= in23 122)))(assert (and (>= in24 97) (<= in24 122)))(assert (and (>= in25 97) (<= in25 122)))(assert (and (>= in26 97) (<= in26 122)))(assert (and (>= in27 97) (<= in27 122)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (>= in0 97) (<= in0 122)))(assert (and (>= in1 97) (<= in1 122)))(assert (and (>= in2 97) (<= in2 122)))(assert (and (>= in3 97) (<= in3 122)))(assert (and (>= in4 97) (<= in4 122)))(assert (and (>= in5 97) (<= in5 122)))(assert (and (>= in6 97) (<= in6 122)))(assert (and (>= in7 97) (<= in7 122)))(assert (and (>= in8 97) (<= in8 122)))(assert (and (>= in9 97) (<= in9 122)))(assert (and (>= in10 97) (<= in10 122)))(assert (and (>= in11 97) (<= in11 122)))(assert (and (>= in12 97) (<= in12 122)))(assert (and (>= in13 97) (<= in13 122)))(assert (and (>= in14 97) (<= in14 122)))(assert (and (>= in15 97) (<= in15 122)))(assert (and (>= in16 97) (<= in16 122)))(assert (and (>= in17 97) (<= in17 122)))(assert (and (>= in18 97) (<= in18 122)))(assert (and (>= in19 97) (<= in19 122)))(assert (and (>= in20 97) (<= in20 122)))(assert (and (>= in21 97) (<= in21 122)))(assert (and (>= in22 97) (<= in22 122)))(assert (and (>= in23 97) (<= in23 122)))(assert (and (>= in24 97) (<= in24 122)))(assert (and (>= in25 97) (<= in25 122)))(assert (and (>= in26 97) (<= in26 122)))(assert (and (>= in27 97) (<= in27 122)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122))  ( >=  in10 97))  ( <=  in10 122))  ( >=  in11 97))  ( <=  in11 122))  ( >=  in12 97))  ( <=  in12 122))  ( >=  in13 97))  ( <=  in13 122))  ( >=  in14 97))  ( <=  in14 122))  ( >=  in15 97))  ( <=  in15 122))  ( >=  in16 97))  ( <=  in16 122))  ( >=  in17 97))  ( <=  in17 122))  ( >=  in18 97))  ( <=  in18 122))  ( >=  in19 97))  ( <=  in19 122))  ( >=  in20 97))  ( <=  in20 122))  ( >=  in21 97))  ( <=  in21 122))  ( >=  in22 97))  ( <=  in22 122))  ( >=  in23 97))  ( <=  in23 122))  ( >=  in24 97))  ( <=  in24 122))  ( >=  in25 97))  ( <=  in25 122))  ( >=  in26 97))  ( <=  in26 122))  ( >=  in27 97))  ( <=  in27 122)))
))
(check-sat)
(pop)
