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
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122))  ( >=  in10 97))  ( <=  in10 122))  ( >=  in11 97))  ( <=  in11 122))  ( >=  in12 97))  ( <=  in12 122))  ( >=  in13 97))  ( <=  in13 122))  ( >=  in14 97))  ( <=  in14 122))  ( >=  in15 97))  ( <=  in15 122))  ( >=  in16 97))  ( <=  in16 122))  ( >=  in17 97))  ( <=  in17 122))  ( >=  in18 97))  ( <=  in18 122))  ( >=  in19 97))  ( <=  in19 122))  ( >=  in20 97))  ( <=  in20 122)))
(pop)

; Generated constraints (B):
(push)
(assert (and (>= in097) and (<= in0122) and (>= in197) and (<= in1122) and (>= in297) and (<= in2122) and (>= in397) and (<= in3122) and (>= in497) and (<= in4122) and (>= in597) and (<= in5122) and (>= in697) and (<= in6122) and (>= in797) and (<= in7122) and (>= in897) and (<= in8122) and (>= in997) and (<= in9122) and (>= in1097) and (<= in10122) and (>= in1197) and (<= in11122) and (>= in1297) and (<= in12122) and (>= in1397) and (<= in13122) and (>= in1497) and (<= in14122) and (>= in1597) and (<= in15122) and (>= in1697) and (<= in16122) and (>= in1797) and (<= in17122) and (>= in1897) and (<= in18122) and (>= in1997) and (<= in19122) and (>= in2097) and (<= in20122)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122))  ( >=  in10 97))  ( <=  in10 122))  ( >=  in11 97))  ( <=  in11 122))  ( >=  in12 97))  ( <=  in12 122))  ( >=  in13 97))  ( <=  in13 122))  ( >=  in14 97))  ( <=  in14 122))  ( >=  in15 97))  ( <=  in15 122))  ( >=  in16 97))  ( <=  in16 122))  ( >=  in17 97))  ( <=  in17 122))  ( >=  in18 97))  ( <=  in18 122))  ( >=  in19 97))  ( <=  in19 122))  ( >=  in20 97))  ( <=  in20 122)))
(assert (not
(and (and (>= in097) and (<= in0122) and (>= in197) and (<= in1122) and (>= in297) and (<= in2122) and (>= in397) and (<= in3122) and (>= in497) and (<= in4122) and (>= in597) and (<= in5122) and (>= in697) and (<= in6122) and (>= in797) and (<= in7122) and (>= in897) and (<= in8122) and (>= in997) and (<= in9122) and (>= in1097) and (<= in10122) and (>= in1197) and (<= in11122) and (>= in1297) and (<= in12122) and (>= in1397) and (<= in13122) and (>= in1497) and (<= in14122) and (>= in1597) and (<= in15122) and (>= in1697) and (<= in16122) and (>= in1797) and (<= in17122) and (>= in1897) and (<= in18122) and (>= in1997) and (<= in19122) and (>= in2097) and (<= in20122)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (>= in097) and (<= in0122) and (>= in197) and (<= in1122) and (>= in297) and (<= in2122) and (>= in397) and (<= in3122) and (>= in497) and (<= in4122) and (>= in597) and (<= in5122) and (>= in697) and (<= in6122) and (>= in797) and (<= in7122) and (>= in897) and (<= in8122) and (>= in997) and (<= in9122) and (>= in1097) and (<= in10122) and (>= in1197) and (<= in11122) and (>= in1297) and (<= in12122) and (>= in1397) and (<= in13122) and (>= in1497) and (<= in14122) and (>= in1597) and (<= in15122) and (>= in1697) and (<= in16122) and (>= in1797) and (<= in17122) and (>= in1897) and (<= in18122) and (>= in1997) and (<= in19122) and (>= in2097) and (<= in20122)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122))  ( >=  in10 97))  ( <=  in10 122))  ( >=  in11 97))  ( <=  in11 122))  ( >=  in12 97))  ( <=  in12 122))  ( >=  in13 97))  ( <=  in13 122))  ( >=  in14 97))  ( <=  in14 122))  ( >=  in15 97))  ( <=  in15 122))  ( >=  in16 97))  ( <=  in16 122))  ( >=  in17 97))  ( <=  in17 122))  ( >=  in18 97))  ( <=  in18 122))  ( >=  in19 97))  ( <=  in19 122))  ( >=  in20 97))  ( <=  in20 122)))
))
(check-sat)
(pop)
