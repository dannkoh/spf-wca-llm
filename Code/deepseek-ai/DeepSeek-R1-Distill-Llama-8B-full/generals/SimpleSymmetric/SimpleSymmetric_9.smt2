; Combined SMT for checking equivalence
; Original constants:
(declare-const in7x8 Int)
(declare-const in5x8 Int)
(declare-const in7x6 Int)
(declare-const in7x0 Int)
(declare-const in1x6 Int)
(declare-const in5x2 Int)
(declare-const in3x4 Int)
(declare-const in7x1 Int)
(declare-const in1x7 Int)
(declare-const in5x3 Int)
(declare-const in3x5 Int)
(declare-const in5x0 Int)
(declare-const in1x4 Int)
(declare-const in3x2 Int)
(declare-const in5x1 Int)
(declare-const in1x5 Int)
(declare-const in3x8 Int)
(declare-const in7x4 Int)
(declare-const in5x6 Int)
(declare-const in7x5 Int)
(declare-const in5x7 Int)
(declare-const in1x8 Int)
(declare-const in7x2 Int)
(declare-const in3x6 Int)
(declare-const in5x4 Int)
(declare-const in7x3 Int)
(declare-const in3x7 Int)
(declare-const in3x0 Int)
(declare-const in1x2 Int)
(declare-const in3x1 Int)
(declare-const in1x3 Int)
(declare-const in1x0 Int)
(declare-const in8x7 Int)
(declare-const in8x5 Int)
(declare-const in6x7 Int)
(declare-const in8x6 Int)
(declare-const in6x8 Int)
(declare-const in0x7 Int)
(declare-const in6x1 Int)
(declare-const in2x5 Int)
(declare-const in4x3 Int)
(declare-const in8x0 Int)
(declare-const in0x8 Int)
(declare-const in6x2 Int)
(declare-const in2x6 Int)
(declare-const in0x5 Int)
(declare-const in4x1 Int)
(declare-const in2x3 Int)
(declare-const in6x0 Int)
(declare-const in0x6 Int)
(declare-const in4x2 Int)
(declare-const in2x4 Int)
(declare-const in8x3 Int)
(declare-const in4x7 Int)
(declare-const in6x5 Int)
(declare-const in8x4 Int)
(declare-const in4x8 Int)
(declare-const in8x1 Int)
(declare-const in2x7 Int)
(declare-const in6x3 Int)
(declare-const in4x5 Int)
(declare-const in8x2 Int)
(declare-const in2x8 Int)
(declare-const in6x4 Int)
(declare-const in4x6 Int)
(declare-const in0x3 Int)
(declare-const in2x1 Int)
(declare-const in4x0 Int)
(declare-const in0x4 Int)
(declare-const in0x1 Int)
(declare-const in2x0 Int)
(declare-const in0x2 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2))  ( =  in3x0 in0x3))  ( =  in3x1 in1x3))  ( =  in3x2 in2x3))  ( =  in4x0 in0x4))  ( =  in4x1 in1x4))  ( =  in4x2 in2x4))  ( =  in4x3 in3x4))  ( =  in5x0 in0x5))  ( =  in5x1 in1x5))  ( =  in5x2 in2x5))  ( =  in5x3 in3x5))  ( =  in5x4 in4x5))  ( =  in6x0 in0x6))  ( =  in6x1 in1x6))  ( =  in6x2 in2x6))  ( =  in6x3 in3x6))  ( =  in6x4 in4x6))  ( =  in6x5 in5x6))  ( =  in7x0 in0x7))  ( =  in7x1 in1x7))  ( =  in7x2 in2x7))  ( =  in7x3 in3x7))  ( =  in7x4 in4x7))  ( =  in7x5 in5x7))  ( =  in7x6 in6x7))  ( =  in8x0 in0x8))  ( =  in8x1 in1x8))  ( =  in8x2 in2x8))  ( =  in8x3 in3x8))  ( =  in8x4 in4x8))  ( =  in8x5 in5x8))  ( =  in8x6 in6x8))  ( =  in8x7 in7x8)))
(pop)

; Generated constraints (B):
(push)
and(assert (= in0x1 in1x0))and (assert (= in0x2 in2x0))and (assert (= in0x3 in3x0))and (assert (= in0x4 in4x0))and (assert (= in0x5 in5x0))and (assert (= in0x6 in6x0))and (assert (= in0x7 in7x0))and (assert (= in0x8 in8x0))and (assert (= in1x2 in2x1))and (assert (= in1x3 in3x1))and (assert (= in1x4 in4x1))and (assert (= in1x5 in5x1))and (assert (= in1x6 in6x1))and (assert (= in1x7 in7x1))and (assert (= in1x8 in8x1))and (assert (= in2x3 in3x2))and (assert (= in2x4 in4x2))and (assert (= in2x5 in5x2))and (assert (= in2x6 in6x2))and (assert (= in2x7 in7x2))and (assert (= in2x8 in8x2))and (assert (= in3x4 in4x3))and (assert (= in3x5 in5x3))and (assert (= in3x6 in6x3))and (assert (= in3x7 in7x3))and (assert (= in3x8 in8x3))and (assert (= in4x5 in5x4))and (assert (= in4x6 in6x4))and (assert (= in4x7 in7x4))and (assert (= in4x8 in8x4))and (assert (= in5x6 in6x5))and (assert (= in5x7 in7x5))and (assert (= in5x8 in8x5))and (assert (= in6x7 in7x6))and (assert (= in6x8 in8x6))and (assert (= in7x8 in8x7))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2))  ( =  in3x0 in0x3))  ( =  in3x1 in1x3))  ( =  in3x2 in2x3))  ( =  in4x0 in0x4))  ( =  in4x1 in1x4))  ( =  in4x2 in2x4))  ( =  in4x3 in3x4))  ( =  in5x0 in0x5))  ( =  in5x1 in1x5))  ( =  in5x2 in2x5))  ( =  in5x3 in3x5))  ( =  in5x4 in4x5))  ( =  in6x0 in0x6))  ( =  in6x1 in1x6))  ( =  in6x2 in2x6))  ( =  in6x3 in3x6))  ( =  in6x4 in4x6))  ( =  in6x5 in5x6))  ( =  in7x0 in0x7))  ( =  in7x1 in1x7))  ( =  in7x2 in2x7))  ( =  in7x3 in3x7))  ( =  in7x4 in4x7))  ( =  in7x5 in5x7))  ( =  in7x6 in6x7))  ( =  in8x0 in0x8))  ( =  in8x1 in1x8))  ( =  in8x2 in2x8))  ( =  in8x3 in3x8))  ( =  in8x4 in4x8))  ( =  in8x5 in5x8))  ( =  in8x6 in6x8))  ( =  in8x7 in7x8)))
(assert (not
(and )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
and(assert (= in0x1 in1x0))and (assert (= in0x2 in2x0))and (assert (= in0x3 in3x0))and (assert (= in0x4 in4x0))and (assert (= in0x5 in5x0))and (assert (= in0x6 in6x0))and (assert (= in0x7 in7x0))and (assert (= in0x8 in8x0))and (assert (= in1x2 in2x1))and (assert (= in1x3 in3x1))and (assert (= in1x4 in4x1))and (assert (= in1x5 in5x1))and (assert (= in1x6 in6x1))and (assert (= in1x7 in7x1))and (assert (= in1x8 in8x1))and (assert (= in2x3 in3x2))and (assert (= in2x4 in4x2))and (assert (= in2x5 in5x2))and (assert (= in2x6 in6x2))and (assert (= in2x7 in7x2))and (assert (= in2x8 in8x2))and (assert (= in3x4 in4x3))and (assert (= in3x5 in5x3))and (assert (= in3x6 in6x3))and (assert (= in3x7 in7x3))and (assert (= in3x8 in8x3))and (assert (= in4x5 in5x4))and (assert (= in4x6 in6x4))and (assert (= in4x7 in7x4))and (assert (= in4x8 in8x4))and (assert (= in5x6 in6x5))and (assert (= in5x7 in7x5))and (assert (= in5x8 in8x5))and (assert (= in6x7 in7x6))and (assert (= in6x8 in8x6))and (assert (= in7x8 in8x7))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in1x0 in0x1)  ( =  in2x0 in0x2))  ( =  in2x1 in1x2))  ( =  in3x0 in0x3))  ( =  in3x1 in1x3))  ( =  in3x2 in2x3))  ( =  in4x0 in0x4))  ( =  in4x1 in1x4))  ( =  in4x2 in2x4))  ( =  in4x3 in3x4))  ( =  in5x0 in0x5))  ( =  in5x1 in1x5))  ( =  in5x2 in2x5))  ( =  in5x3 in3x5))  ( =  in5x4 in4x5))  ( =  in6x0 in0x6))  ( =  in6x1 in1x6))  ( =  in6x2 in2x6))  ( =  in6x3 in3x6))  ( =  in6x4 in4x6))  ( =  in6x5 in5x6))  ( =  in7x0 in0x7))  ( =  in7x1 in1x7))  ( =  in7x2 in2x7))  ( =  in7x3 in3x7))  ( =  in7x4 in4x7))  ( =  in7x5 in5x7))  ( =  in7x6 in6x7))  ( =  in8x0 in0x8))  ( =  in8x1 in1x8))  ( =  in8x2 in2x8))  ( =  in8x3 in3x8))  ( =  in8x4 in4x8))  ( =  in8x5 in5x8))  ( =  in8x6 in6x8))  ( =  in8x7 in7x8)))
))
(check-sat)
(pop)
