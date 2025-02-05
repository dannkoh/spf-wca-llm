; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in9 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122)))
(pop)

; Generated constraints (B):
(push)
(assert (and (>= in0 97) (<= in0 122)))(assert (and (>= in1 97) (<= in1 122)))(assert (and (>= in2 97) (<= in2 122)))(assert (and (>= in3 97) (<= in3 122)))(assert (and (>= in4 97) (<= in4 122)))(assert (and (>= in5 97) (<= in5 122)))(assert (and (>= in6 97) (<= in6 122)))(assert (and (>= in7 97) (<= in7 122)))(assert (and (>= in8 97) (<= in8 122)))(assert (and (>= in9 97) (<= in9 122)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122)))
(assert (not
(and (and (>= in0 97) (<= in0 122)))(assert (and (>= in1 97) (<= in1 122)))(assert (and (>= in2 97) (<= in2 122)))(assert (and (>= in3 97) (<= in3 122)))(assert (and (>= in4 97) (<= in4 122)))(assert (and (>= in5 97) (<= in5 122)))(assert (and (>= in6 97) (<= in6 122)))(assert (and (>= in7 97) (<= in7 122)))(assert (and (>= in8 97) (<= in8 122)))(assert (and (>= in9 97) (<= in9 122)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (>= in0 97) (<= in0 122)))(assert (and (>= in1 97) (<= in1 122)))(assert (and (>= in2 97) (<= in2 122)))(assert (and (>= in3 97) (<= in3 122)))(assert (and (>= in4 97) (<= in4 122)))(assert (and (>= in5 97) (<= in5 122)))(assert (and (>= in6 97) (<= in6 122)))(assert (and (>= in7 97) (<= in7 122)))(assert (and (>= in8 97) (<= in8 122)))(assert (and (>= in9 97) (<= in9 122)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122))  ( >=  in2 97))  ( <=  in2 122))  ( >=  in3 97))  ( <=  in3 122))  ( >=  in4 97))  ( <=  in4 122))  ( >=  in5 97))  ( <=  in5 122))  ( >=  in6 97))  ( <=  in6 122))  ( >=  in7 97))  ( <=  in7 122))  ( >=  in8 97))  ( <=  in8 122))  ( >=  in9 97))  ( <=  in9 122)))
))
(check-sat)
(pop)
