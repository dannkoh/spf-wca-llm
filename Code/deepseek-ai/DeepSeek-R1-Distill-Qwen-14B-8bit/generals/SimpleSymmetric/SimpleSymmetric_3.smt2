; Combined SMT for checking equivalence
; Original constants:
(declare-const in2x1 Int)
(declare-const in1x2 Int)
(declare-const in1x0 Int)
(declare-const in0x1 Int)
(declare-const in2x0 Int)
(declare-const in0x2 Int)

; Original constraints (A):
(push)
(assert (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2)))
(pop)

; Generated constraints (B):
(push)
(assert (and (= in0x1 in1x0) (= in0x2 in2x0) (= in1x2 in2x1)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2)))
(assert (not
(and (and (= in0x1 in1x0) (= in0x2 in2x0) (= in1x2 in2x1)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (= in0x1 in1x0) (= in0x2 in2x0) (= in1x2 in2x1)))
(assert (not
(and (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2)))
))
(check-sat)
(pop)
