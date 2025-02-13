; Combined SMT for checking equivalence
; Original constants:
(declare-const in1x0 Int)
(declare-const in0x1 Int)

; Original constraints (A):
(push)
(assert  ( =  in1x0 in0x1))
(pop)

; Generated constraints (B):
(push)
(assert (>= in0x0 0))
(assert (< in0x0 N))
(assert (>= in0x1 0))
(assert (< in0x1 N))
(assert (>= in1x0 0))
(assert (< in1x0 N))
(assert (>= in1x1 0))
(assert (< in1x1 N))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert  ( =  in1x0 in0x1))
(assert (not
(and (>= in0x0 0) (< in0x0 N) (>= in0x1 0) (< in0x1 N) (>= in1x0 0) (< in1x0 N) (>= in1x1 0) (< in1x1 N))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (>= in0x0 0))
(assert (< in0x0 N))
(assert (>= in0x1 0))
(assert (< in0x1 N))
(assert (>= in1x0 0))
(assert (< in1x0 N))
(assert (>= in1x1 0))
(assert (< in1x1 N))
(assert (not
(and  ( =  in1x0 in0x1))
))
(check-sat)
(pop)
