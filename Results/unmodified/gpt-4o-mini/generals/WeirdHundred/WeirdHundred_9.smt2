; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (not ( = in0 1))  ( =  in0 0))  ( >=  in1 100))  ( >=  in2 100))  ( >=  in3 100))  ( >=  in4 100))  ( >=  in5 100))  ( >=  in6 100))  ( >=  in7 100))  ( >=  in8 100)))
(pop)

; Generated constraints (B):
(push)
(assert (and (and (not (= in0 1)) (= in0 0)) (>= in1 100) (>= in2 100) (>= in3 100) (>= in4 100) (>= in5 100) (>= in6 100) (>= in7 100) (>= in8 100)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (not ( = in0 1))  ( =  in0 0))  ( >=  in1 100))  ( >=  in2 100))  ( >=  in3 100))  ( >=  in4 100))  ( >=  in5 100))  ( >=  in6 100))  ( >=  in7 100))  ( >=  in8 100)))
(assert (not
(and (and (and (not (= in0 1)) (= in0 0)) (>= in1 100) (>= in2 100) (>= in3 100) (>= in4 100) (>= in5 100) (>= in6 100) (>= in7 100) (>= in8 100)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (and (not (= in0 1)) (= in0 0)) (>= in1 100) (>= in2 100) (>= in3 100) (>= in4 100) (>= in5 100) (>= in6 100) (>= in7 100) (>= in8 100)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (not ( = in0 1))  ( =  in0 0))  ( >=  in1 100))  ( >=  in2 100))  ( >=  in3 100))  ( >=  in4 100))  ( >=  in5 100))  ( >=  in6 100))  ( >=  in7 100))  ( >=  in8 100)))
))
(check-sat)
(pop)
