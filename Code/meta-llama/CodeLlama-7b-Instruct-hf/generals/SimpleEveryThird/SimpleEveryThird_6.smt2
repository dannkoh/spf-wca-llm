; Combined SMT for checking equivalence
; Original constants:
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert  ( =  in3 0))
(pop)

; Generated constraints (B):
(push)
(assert (< in0 0))
(assert (< in1 0))
(assert (< in2 0))
(assert (< in3 0))
(assert (< in4 0))
(assert (< in5 0))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert  ( =  in3 0))
(assert (not
(and (< in0 0) (< in1 0) (< in2 0) (< in3 0) (< in4 0) (< in5 0))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (< in0 0))
(assert (< in1 0))
(assert (< in2 0))
(assert (< in3 0))
(assert (< in4 0))
(assert (< in5 0))
(assert (not
(and  ( =  in3 0))
))
(check-sat)
(pop)
