(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in3 Int)

(assert (and (and (and (and (not ( = in0 1))  ( ==  in0 0))  ( >=  in1 100))  ( >=  in2 100))  ( >=  in3 100)))

(check-sat)
(get-model)