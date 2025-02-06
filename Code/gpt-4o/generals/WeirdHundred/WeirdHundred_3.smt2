; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)

; Original constraints (A):
(push)
(assert (and (and (and (not ( = in0 1))  ( =  in0 0))  ( >=  in1 100))  ( >=  in2 100)))
(pop)

; Generated constraints (B):
(push)
(assert (and (not ( = in0 1)) ( = in0 0) ( >= in1 100) ( >= in2 100)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (not ( = in0 1))  ( =  in0 0))  ( >=  in1 100))  ( >=  in2 100)))
(assert (not
(and (and (not ( = in0 1)) ( = in0 0) ( >= in1 100) ( >= in2 100)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (not ( = in0 1)) ( = in0 0) ( >= in1 100) ( >= in2 100)))
(assert (not
(and (and (and (and (not ( = in0 1))  ( =  in0 0))  ( >=  in1 100))  ( >=  in2 100)))
))
(check-sat)
(pop)
