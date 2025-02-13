; Combined SMT for checking equivalence
; Original constants:
(declare-const in4x3 Int)
(declare-const in3x4 Int)
(declare-const in4x1 Int)
(declare-const in1x4 Int)
(declare-const in3x2 Int)
(declare-const in2x3 Int)
(declare-const in4x2 Int)
(declare-const in2x4 Int)
(declare-const in3x0 Int)
(declare-const in0x3 Int)
(declare-const in2x1 Int)
(declare-const in1x2 Int)
(declare-const in4x0 Int)
(declare-const in0x4 Int)
(declare-const in3x1 Int)
(declare-const in1x3 Int)
(declare-const in1x0 Int)
(declare-const in0x1 Int)
(declare-const in2x0 Int)
(declare-const in0x2 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2))  ( =  in3x0 in0x3))  ( =  in3x1 in1x3))  ( =  in3x2 in2x3))  ( =  in4x0 in0x4))  ( =  in4x1 in1x4))  ( =  in4x2 in2x4))  ( =  in4x3 in3x4)))
(pop)

; Generated constraints (B):
(push)
(assert (= in1x1 100)   ;; Constant upper limit for N = 5
(assert (<= in2x1 in2x0)
(assert (= in2x2 100)   ;; Constant upper limit for N = 5
(assert (<= in3x1 in3x0)
(assert (<= in3x2 in3x1)
(assert (= in3x3 100)   ;; Constant upper limit for N = 5
(assert (<= in4x1 in4x0)
(assert (<= in4x2 in4x1)
(assert (<= in4x3 in4x2)
(assert (= in4x4 100)   ;; Constant upper limit for N = 5
(assert (<= in5x1 in5x0)
(assert (<= in5x2 in5x1)
(assert (<= in5x3 in5x2)
(assert (<= in5x4 in5x3)
(assert (= in5x5 100)   ;; Constant upper limit for N = 5
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2))  ( =  in3x0 in0x3))  ( =  in3x1 in1x3))  ( =  in3x2 in2x3))  ( =  in4x0 in0x4))  ( =  in4x1 in1x4))  ( =  in4x2 in2x4))  ( =  in4x3 in3x4)))
(assert (not
(and (= in1x1 100)   ;; Constant upper limit for N =  (<= in2x1 in2x0 (= in2x2 100)   ;; Constant upper limit for N =  (<= in3x1 in3x0 (<= in3x2 in3x1 (= in3x3 100)   ;; Constant upper limit for N =  (<= in4x1 in4x0 (<= in4x2 in4x1 (<= in4x3 in4x2 (= in4x4 100)   ;; Constant upper limit for N =  (<= in5x1 in5x0 (<= in5x2 in5x1 (<= in5x3 in5x2 (<= in5x4 in5x3 (= in5x5 100)   ;; Constant upper limit for N = )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= in1x1 100)   ;; Constant upper limit for N = 5
(assert (<= in2x1 in2x0)
(assert (= in2x2 100)   ;; Constant upper limit for N = 5
(assert (<= in3x1 in3x0)
(assert (<= in3x2 in3x1)
(assert (= in3x3 100)   ;; Constant upper limit for N = 5
(assert (<= in4x1 in4x0)
(assert (<= in4x2 in4x1)
(assert (<= in4x3 in4x2)
(assert (= in4x4 100)   ;; Constant upper limit for N = 5
(assert (<= in5x1 in5x0)
(assert (<= in5x2 in5x1)
(assert (<= in5x3 in5x2)
(assert (<= in5x4 in5x3)
(assert (= in5x5 100)   ;; Constant upper limit for N = 5
(assert (not
(and (and (and (and (and (and (and (and (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2))  ( =  in3x0 in0x3))  ( =  in3x1 in1x3))  ( =  in3x2 in2x3))  ( =  in4x0 in0x4))  ( =  in4x1 in1x4))  ( =  in4x2 in2x4))  ( =  in4x3 in3x4)))
))
(check-sat)
(pop)
