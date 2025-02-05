; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 64)) (not ( = in0 35))) (not ( = in0 36)))  ( =  in0 37)) (not ( = in1 64))) (not ( = in1 35))) (not ( = in1 36)))  ( =  in1 37)) (not ( = in2 64))) (not ( = in2 35))) (not ( = in2 36)))  ( =  in2 37)) (not ( = in3 64))) (not ( = in3 35))) (not ( = in3 36)))  ( =  in3 37)))
(pop)

; Generated constraints (B):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (= in0 37)(not (= in1 37))(not (= in2 37))(not (= in3 37)))) (and (and (and (and (and (and (and (and (and (and (and (not (= in0 37))(= in1 37)(not (= in2 37))(not (= in3 37)))) (and (and (and (and (and (and (and (and (and (and (and (not (= in0 37))(not (= in1 37))(= in2 37)(not (= in3 37)))) (and (and (and (and (and (and (and (and (and (and (and (not (= in0 37))(not (= in1 37))(not (= in2 37))(= in3 37))) ))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 64)) (not ( = in0 35))) (not ( = in0 36)))  ( =  in0 37)) (not ( = in1 64))) (not ( = in1 35))) (not ( = in1 36)))  ( =  in1 37)) (not ( = in2 64))) (not ( = in2 35))) (not ( = in2 36)))  ( =  in2 37)) (not ( = in3 64))) (not ( = in3 35))) (not ( = in3 36)))  ( =  in3 37)))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (= in0 37)(not (= in1 37))(not (= in2 37))(not (= in3 37)))) (and (and (and (and (and (and (and (and (and (and (and (not (= in0 37))(= in1 37)(not (= in2 37))(not (= in3 37)))) (and (and (and (and (and (and (and (and (and (and (and (not (= in0 37))(not (= in1 37))(= in2 37)(not (= in3 37)))) (and (and (and (and (and (and (and (and (and (and (and (not (= in0 37))(not (= in1 37))(not (= in2 37))(= in3 37))) ))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (= in0 37)(not (= in1 37))(not (= in2 37))(not (= in3 37)))) (and (and (and (and (and (and (and (and (and (and (and (not (= in0 37))(= in1 37)(not (= in2 37))(not (= in3 37)))) (and (and (and (and (and (and (and (and (and (and (and (not (= in0 37))(not (= in1 37))(= in2 37)(not (= in3 37)))) (and (and (and (and (and (and (and (and (and (and (and (not (= in0 37))(not (= in1 37))(not (= in2 37))(= in3 37))) ))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 64)) (not ( = in0 35))) (not ( = in0 36)))  ( =  in0 37)) (not ( = in1 64))) (not ( = in1 35))) (not ( = in1 36)))  ( =  in1 37)) (not ( = in2 64))) (not ( = in2 35))) (not ( = in2 36)))  ( =  in2 37)) (not ( = in3 64))) (not ( = in3 35))) (not ( = in3 36)))  ( =  in3 37)))
))
(check-sat)
(pop)
