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

(assert (and (and (and (and (and  ( ==  in1x0 in0x1)  ( ==  in2x0 in0x2))  ( ==  in2x1 in1x2))  ( ==  in3x0 in0x3))  ( ==  in3x1 in1x3))  ( ==  in3x2 in2x3)))

(check-sat)
(get-model)