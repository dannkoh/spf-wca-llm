; Combined SMT for checking equivalence
; Original constants:
(declare-const in3x2 Int)
(declare-const in2x3 Int)
(declare-const in3x0 Int)
(declare-const in0x3 Int)
(declare-const in2x1 Int)
(declare-const in1x2 Int)
(declare-const in3x1 Int)
(declare-const in1x3 Int)
(declare-const in1x0 Int)
(declare-const in0x1 Int)
(declare-const in2x0 Int)
(declare-const in0x2 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2))  ( =  in3x0 in0x3))  ( =  in3x1 in1x3))  ( =  in3x2 in2x3)))
(pop)

; Generated constraints (B):
(push)
and(assert (= in0x1 in1x0))and (assert (= in0x2 in2x0))and (assert (= in0x3 in3x0))and (assert (= in1x2 in2x1))and (assert (= in1x3 in3x1))and (assert (= in2x3 in3x2))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2))  ( =  in3x0 in0x3))  ( =  in3x1 in1x3))  ( =  in3x2 in2x3)))
(assert (not
(and )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
and(assert (= in0x1 in1x0))and (assert (= in0x2 in2x0))and (assert (= in0x3 in3x0))and (assert (= in1x2 in2x1))and (assert (= in1x3 in3x1))and (assert (= in2x3 in3x2))
(assert (not
(and (and (and (and (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2))  ( =  in3x0 in0x3))  ( =  in3x1 in1x3))  ( =  in3x2 in2x3)))
))
(check-sat)
(pop)
