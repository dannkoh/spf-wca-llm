; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (not ( = in0 95))  ( =  in0 45)) (not ( = in1 95)))  ( =  in1 45)) (not ( = in2 95)))  ( =  in2 45)) (not ( = in3 95)))  ( =  in3 45)))
(pop)

; Generated constraints (B):
(push)
(assert (and (and (not (= in0 95)) (= in0 45)) (and (not (= in1 95)) (= in1 45)) (and (not (= in2 95)) (= in2 45)) (and (not (= in3 95)) (= in3 45))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (not ( = in0 95))  ( =  in0 45)) (not ( = in1 95)))  ( =  in1 45)) (not ( = in2 95)))  ( =  in2 45)) (not ( = in3 95)))  ( =  in3 45)))
(assert (not
(and (and (and (not (= in0 95)) (= in0 45)) (and (not (= in1 95)) (= in1 45)) (and (not (= in2 95)) (= in2 45)) (and (not (= in3 95)) (= in3 45))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (and (not (= in0 95)) (= in0 45)) (and (not (= in1 95)) (= in1 45)) (and (not (= in2 95)) (= in2 45)) (and (not (= in3 95)) (= in3 45))))
(assert (not
(and (and (and (and (and (and (and (and (not ( = in0 95))  ( =  in0 45)) (not ( = in1 95)))  ( =  in1 45)) (not ( = in2 95)))  ( =  in2 45)) (not ( = in3 95)))  ( =  in3 45)))
))
(check-sat)
(pop)
