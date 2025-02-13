; Combined SMT for checking equivalence
; Original constants:
(declare-const in2 Int)

; Original constraints (A):
(push)
(assert  ( =  in2 0))
(pop)

; Generated constraints (B):
(push)
(assert (= in2 0))(assert (<= in1 100)))(assert (<= in2 100))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert  ( =  in2 0))
(assert (not
(and (= in2 0))(assert (<= in1 100)))(assert (<= in2 100))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= in2 0))(assert (<= in1 100)))(assert (<= in2 100))
(assert (not
(and  ( =  in2 0))
))
(check-sat)
(pop)
