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

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( ==  in1x0 in0x1)  ( ==  in2x0 in0x2))  ( ==  in2x1 in1x2))  ( ==  in3x0 in0x3))  ( ==  in3x1 in1x3))  ( ==  in3x2 in2x3))  ( ==  in4x0 in0x4))  ( ==  in4x1 in1x4))  ( ==  in4x2 in2x4))  ( ==  in4x3 in3x4))  ( ==  in5x0 in0x5))  ( ==  in5x1 in1x5))  ( ==  in5x2 in2x5))  ( ==  in5x3 in3x5))  ( ==  in5x4 in4x5))  ( ==  in6x0 in0x6))  ( ==  in6x1 in1x6))  ( ==  in6x2 in2x6))  ( ==  in6x3 in3x6))  ( ==  in6x4 in4x6))  ( ==  in6x5 in5x6)))

(check-sat)
(get-model)