(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in9 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

(assert (and (and (and (and (and (and (and (and  ( >=  in1 100)  ( >=  in2 100))  ( >=  in3 100))  ( >=  in4 100))  ( >=  in5 100))  ( >=  in6 100))  ( >=  in7 100))  ( >=  in8 100))  ( >=  in9 100)))

(check-sat)
(get-model)