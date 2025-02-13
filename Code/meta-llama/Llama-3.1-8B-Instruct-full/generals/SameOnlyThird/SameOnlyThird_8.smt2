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
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert  ( =  in2 0))
(assert (not
(and (= in2 0) (= in3 0) (= in4 0) (= in5 0) (= in6 0) (= in7 0) (= in8 0))
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
(assert (not
(and  ( =  in2 0))
))
(check-sat)
(pop)
