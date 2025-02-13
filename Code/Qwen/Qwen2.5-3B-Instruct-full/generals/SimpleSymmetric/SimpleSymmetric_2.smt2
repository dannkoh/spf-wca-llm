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
(assert (= in1x1 100)   ;; Constant upper limit for N = 2
(assert (<= in2x1 in2x0)
(assert (= in2x2 100)   ;; Constant upper limit for N = 2
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert  ( =  in1x0 in0x1))
(assert (not
(and (= in1x1 100)   ;; Constant upper limit for N =  (<= in2x1 in2x0 (= in2x2 100)   ;; Constant upper limit for N = )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= in1x1 100)   ;; Constant upper limit for N = 2
(assert (<= in2x1 in2x0)
(assert (= in2x2 100)   ;; Constant upper limit for N = 2
(assert (not
(and  ( =  in1x0 in0x1))
))
(check-sat)
(pop)
