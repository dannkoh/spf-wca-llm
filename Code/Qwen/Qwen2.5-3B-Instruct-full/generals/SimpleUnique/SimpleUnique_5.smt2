; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (not ( = in0 in1)) (not ( = in0 in2))) (not ( = in0 in3))) (not ( = in0 in4))) (not ( = in1 in2))) (not ( = in1 in3))) (not ( = in1 in4))) (not ( = in2 in3))) (not ( = in2 in4))) (not ( = in3 in4))))
(pop)

; Generated constraints (B):
(push)
(assert (not (= in0 in1)))
(assert (not (= in0 in2)))
(assert (not (= in0 in3)))
(assert (not (= in0 in4)))
(assert (not (= in1 in2)))
(assert (not (= in1 in3)))
(assert (not (= in1 in4)))
(assert (not (= in2 in3)))
(assert (not (= in2 in4)))
(assert (not (= in3 in4)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (not ( = in0 in1)) (not ( = in0 in2))) (not ( = in0 in3))) (not ( = in0 in4))) (not ( = in1 in2))) (not ( = in1 in3))) (not ( = in1 in4))) (not ( = in2 in3))) (not ( = in2 in4))) (not ( = in3 in4))))
(assert (not
(and (not (= in0 in1)) (not (= in0 in2)) (not (= in0 in3)) (not (= in0 in4)) (not (= in1 in2)) (not (= in1 in3)) (not (= in1 in4)) (not (= in2 in3)) (not (= in2 in4)) (not (= in3 in4)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (not (= in0 in1)))
(assert (not (= in0 in2)))
(assert (not (= in0 in3)))
(assert (not (= in0 in4)))
(assert (not (= in1 in2)))
(assert (not (= in1 in3)))
(assert (not (= in1 in4)))
(assert (not (= in2 in3)))
(assert (not (= in2 in4)))
(assert (not (= in3 in4)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (not ( = in0 in1)) (not ( = in0 in2))) (not ( = in0 in3))) (not ( = in0 in4))) (not ( = in1 in2))) (not ( = in1 in3))) (not ( = in1 in4))) (not ( = in2 in3))) (not ( = in2 in4))) (not ( = in3 in4))))
))
(check-sat)
(pop)
