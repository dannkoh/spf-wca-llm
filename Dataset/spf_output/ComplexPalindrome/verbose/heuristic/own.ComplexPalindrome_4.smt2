(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in3 Int)

(assert (and  ( <  in0 in3)  ( <  in1 in2)))

(check-sat)
(get-model)