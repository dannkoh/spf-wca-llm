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
(assert (= in1x1 100)   ;; Constant upper limit for N = 3
(assert (<= in2x1 in2x0)
(assert (= in2x2 100)   ;; Constant upper limit for N = 3
(assert (<= in3x1 in3x0)
(assert (<= in3x2 in3x1)
(assert (= in3x3 100)   ;; Constant upper limit for N = 3
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2)))
(assert (not
(and (= in1x1 100)   ;; Constant upper limit for N =  (<= in2x1 in2x0 (= in2x2 100)   ;; Constant upper limit for N =  (<= in3x1 in3x0 (<= in3x2 in3x1 (= in3x3 100)   ;; Constant upper limit for N = )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= in1x1 100)   ;; Constant upper limit for N = 3
(assert (<= in2x1 in2x0)
(assert (= in2x2 100)   ;; Constant upper limit for N = 3
(assert (<= in3x1 in3x0)
(assert (<= in3x2 in3x1)
(assert (= in3x3 100)   ;; Constant upper limit for N = 3
(assert (not
(and (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2)))
))
(check-sat)
(pop)
