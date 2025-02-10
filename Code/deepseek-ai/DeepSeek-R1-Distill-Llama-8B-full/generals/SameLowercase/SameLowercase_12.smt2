; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in11 Int)
(declare-const in10 Int)
(declare-const in9 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122))  ( >=  in10 97))  ( <=  in10 122))  ( >=  in11 97))  ( <=  in11 122)))
(pop)

; Generated constraints (B):
(push)
(assert (and (>= in097) and (<= in0122) and (>= in197) and (<= in1122) and (>= in297) and (<= in2122) and (>= in397) and (<= in3122) and (>= in497) and (<= in4122) and (>= in597) and (<= in5122) and (>= in697) and (<= in6122) and (>= in797) and (<= in7122) and (>= in897) and (<= in8122) and (>= in997) and (<= in9122) and (>= in1097) and (<= in10122) and (>= in1197) and (<= in11122)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122))  ( >=  in10 97))  ( <=  in10 122))  ( >=  in11 97))  ( <=  in11 122)))
(assert (not
(and (and (>= in097) and (<= in0122) and (>= in197) and (<= in1122) and (>= in297) and (<= in2122) and (>= in397) and (<= in3122) and (>= in497) and (<= in4122) and (>= in597) and (<= in5122) and (>= in697) and (<= in6122) and (>= in797) and (<= in7122) and (>= in897) and (<= in8122) and (>= in997) and (<= in9122) and (>= in1097) and (<= in10122) and (>= in1197) and (<= in11122)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (>= in097) and (<= in0122) and (>= in197) and (<= in1122) and (>= in297) and (<= in2122) and (>= in397) and (<= in3122) and (>= in497) and (<= in4122) and (>= in597) and (<= in5122) and (>= in697) and (<= in6122) and (>= in797) and (<= in7122) and (>= in897) and (<= in8122) and (>= in997) and (<= in9122) and (>= in1097) and (<= in10122) and (>= in1197) and (<= in11122)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122))  ( >=  in10 97))  ( <=  in10 122))  ( >=  in11 97))  ( <=  in11 122)))
))
(check-sat)
(pop)
