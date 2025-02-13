; Combined SMT for checking equivalence
; Original constants:
(declare-const in6x1 Int)
(declare-const in1x6 Int)
(declare-const in5x2 Int)
(declare-const in2x5 Int)
(declare-const in4x3 Int)
(declare-const in3x4 Int)
(declare-const in6x2 Int)
(declare-const in2x6 Int)
(declare-const in5x3 Int)
(declare-const in3x5 Int)
(declare-const in5x0 Int)
(declare-const in0x5 Int)
(declare-const in4x1 Int)
(declare-const in1x4 Int)
(declare-const in3x2 Int)
(declare-const in2x3 Int)
(declare-const in6x0 Int)
(declare-const in0x6 Int)
(declare-const in5x1 Int)
(declare-const in1x5 Int)
(declare-const in4x2 Int)
(declare-const in2x4 Int)
(declare-const in6x5 Int)
(declare-const in5x6 Int)
(declare-const in6x3 Int)
(declare-const in3x6 Int)
(declare-const in5x4 Int)
(declare-const in4x5 Int)
(declare-const in6x4 Int)
(declare-const in4x6 Int)
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
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2))  ( =  in3x0 in0x3))  ( =  in3x1 in1x3))  ( =  in3x2 in2x3))  ( =  in4x0 in0x4))  ( =  in4x1 in1x4))  ( =  in4x2 in2x4))  ( =  in4x3 in3x4))  ( =  in5x0 in0x5))  ( =  in5x1 in1x5))  ( =  in5x2 in2x5))  ( =  in5x3 in3x5))  ( =  in5x4 in4x5))  ( =  in6x0 in0x6))  ( =  in6x1 in1x6))  ( =  in6x2 in2x6))  ( =  in6x3 in3x6))  ( =  in6x4 in4x6))  ( =  in6x5 in5x6)))
(pop)

; Generated constraints (B):
(push)
(assert (= in1x1 100)   ;; Constant upper limit for N = 7
(assert (<= in2x1 in2x0)
(assert (= in2x2 100)   ;; Constant upper limit for N = 7
(assert (<= in3x1 in3x0)
(assert (<= in3x2 in3x1)
(assert (= in3x3 100)   ;; Constant upper limit for N = 7
(assert (<= in4x1 in4x0)
(assert (<= in4x2 in4x1)
(assert (<= in4x3 in4x2)
(assert (= in4x4 100)   ;; Constant upper limit for N = 7
(assert (<= in5x1 in5x0)
(assert (<= in5x2 in5x1)
(assert (<= in5x3 in5x2)
(assert (<= in5x4 in5x3)
(assert (= in5x5 100)   ;; Constant upper limit for N = 7
(assert (<= in6x1 in6x0)
(assert (<= in6x2 in6x1)
(assert (<= in6x3 in6x2)
(assert (<= in6x4 in6x3)
(assert (<= in6x5 in6x4)
(assert (= in6x6 100)   ;; Constant upper limit for N = 7
(assert (<= in7x1 in7x0)
(assert (<= in7x2 in7x1)
(assert (<= in7x3 in7x2)
(assert (<= in7x4 in7x3)
(assert (<= in7x5 in7x4)
(assert (<= in7x6 in7x5)
(assert (= in7x7 100)   ;; Constant upper limit for N = 7
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2))  ( =  in3x0 in0x3))  ( =  in3x1 in1x3))  ( =  in3x2 in2x3))  ( =  in4x0 in0x4))  ( =  in4x1 in1x4))  ( =  in4x2 in2x4))  ( =  in4x3 in3x4))  ( =  in5x0 in0x5))  ( =  in5x1 in1x5))  ( =  in5x2 in2x5))  ( =  in5x3 in3x5))  ( =  in5x4 in4x5))  ( =  in6x0 in0x6))  ( =  in6x1 in1x6))  ( =  in6x2 in2x6))  ( =  in6x3 in3x6))  ( =  in6x4 in4x6))  ( =  in6x5 in5x6)))
(assert (not
(and (= in1x1 100)   ;; Constant upper limit for N =  (<= in2x1 in2x0 (= in2x2 100)   ;; Constant upper limit for N =  (<= in3x1 in3x0 (<= in3x2 in3x1 (= in3x3 100)   ;; Constant upper limit for N =  (<= in4x1 in4x0 (<= in4x2 in4x1 (<= in4x3 in4x2 (= in4x4 100)   ;; Constant upper limit for N =  (<= in5x1 in5x0 (<= in5x2 in5x1 (<= in5x3 in5x2 (<= in5x4 in5x3 (= in5x5 100)   ;; Constant upper limit for N =  (<= in6x1 in6x0 (<= in6x2 in6x1 (<= in6x3 in6x2 (<= in6x4 in6x3 (<= in6x5 in6x4 (= in6x6 100)   ;; Constant upper limit for N =  (<= in7x1 in7x0 (<= in7x2 in7x1 (<= in7x3 in7x2 (<= in7x4 in7x3 (<= in7x5 in7x4 (<= in7x6 in7x5 (= in7x7 100)   ;; Constant upper limit for N = )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= in1x1 100)   ;; Constant upper limit for N = 7
(assert (<= in2x1 in2x0)
(assert (= in2x2 100)   ;; Constant upper limit for N = 7
(assert (<= in3x1 in3x0)
(assert (<= in3x2 in3x1)
(assert (= in3x3 100)   ;; Constant upper limit for N = 7
(assert (<= in4x1 in4x0)
(assert (<= in4x2 in4x1)
(assert (<= in4x3 in4x2)
(assert (= in4x4 100)   ;; Constant upper limit for N = 7
(assert (<= in5x1 in5x0)
(assert (<= in5x2 in5x1)
(assert (<= in5x3 in5x2)
(assert (<= in5x4 in5x3)
(assert (= in5x5 100)   ;; Constant upper limit for N = 7
(assert (<= in6x1 in6x0)
(assert (<= in6x2 in6x1)
(assert (<= in6x3 in6x2)
(assert (<= in6x4 in6x3)
(assert (<= in6x5 in6x4)
(assert (= in6x6 100)   ;; Constant upper limit for N = 7
(assert (<= in7x1 in7x0)
(assert (<= in7x2 in7x1)
(assert (<= in7x3 in7x2)
(assert (<= in7x4 in7x3)
(assert (<= in7x5 in7x4)
(assert (<= in7x6 in7x5)
(assert (= in7x7 100)   ;; Constant upper limit for N = 7
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2))  ( =  in3x0 in0x3))  ( =  in3x1 in1x3))  ( =  in3x2 in2x3))  ( =  in4x0 in0x4))  ( =  in4x1 in1x4))  ( =  in4x2 in2x4))  ( =  in4x3 in3x4))  ( =  in5x0 in0x5))  ( =  in5x1 in1x5))  ( =  in5x2 in2x5))  ( =  in5x3 in3x5))  ( =  in5x4 in4x5))  ( =  in6x0 in0x6))  ( =  in6x1 in1x6))  ( =  in6x2 in2x6))  ( =  in6x3 in3x6))  ( =  in6x4 in4x6))  ( =  in6x5 in5x6)))
))
(check-sat)
(pop)
