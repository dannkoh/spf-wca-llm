; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 95))  ( =  in0 45)) (not ( = in1 95)))  ( =  in1 45)) (not ( = in2 95)))  ( =  in2 45)) (not ( = in3 95)))  ( =  in3 45)) (not ( = in4 95)))  ( =  in4 45)) (not ( = in5 95)))  ( =  in5 45)) (not ( = in6 95)))  ( =  in6 45)))
(pop)

; Generated constraints (B):
(push)
(and (not (= in0 95)) (= in0 45) (not (= in1 95)) (not (= in2 95)) (not (= in3 95)) (not (= in4 95)) (not (= in5 95)) (not (= in6 95)) )
(and (not (= in0 95)) (not (= in1 95)) (= in1 45) (not (= in2 95)) (not (= in3 95)) (not (= in4 95)) (not (= in5 95)) (not (= in6 95)) )
(and (not (= in0 95)) (not (= in1 95)) (not (= in2 95)) (= in2 45) (not (= in3 95)) (not (= in4 95)) (not (= in5 95)) (not (= in6 95)) )
(and (not (= in0 95)) (not (= in1 95)) (not (= in2 95)) (not (= in3 95)) (= in3 45) (not (= in4 95)) (not (= in5 95)) (not (= in6 95)) )
(and (not (= in0 95)) (not (= in1 95)) (not (= in2 95)) (not (= in3 95)) (not (= in4 95)) (= in4 45) (not (= in5 95)) (not (= in6 95)) )
(and (not (= in0 95)) (not (= in1 95)) (not (= in2 95)) (not (= in3 95)) (not (= in4 95)) (not (= in5 95)) (= in5 45) (not (= in6 95)) )
(and (not (= in0 95)) (not (= in1 95)) (not (= in2 95)) (not (= in3 95)) (not (= in4 95)) (not (= in5 95)) (not (= in6 95)) (= in6 45) )
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 95))  ( =  in0 45)) (not ( = in1 95)))  ( =  in1 45)) (not ( = in2 95)))  ( =  in2 45)) (not ( = in3 95)))  ( =  in3 45)) (not ( = in4 95)))  ( =  in4 45)) (not ( = in5 95)))  ( =  in5 45)) (not ( = in6 95)))  ( =  in6 45)))
(assert (not
(and )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(and (not (= in0 95)) (= in0 45) (not (= in1 95)) (not (= in2 95)) (not (= in3 95)) (not (= in4 95)) (not (= in5 95)) (not (= in6 95)) )
(and (not (= in0 95)) (not (= in1 95)) (= in1 45) (not (= in2 95)) (not (= in3 95)) (not (= in4 95)) (not (= in5 95)) (not (= in6 95)) )
(and (not (= in0 95)) (not (= in1 95)) (not (= in2 95)) (= in2 45) (not (= in3 95)) (not (= in4 95)) (not (= in5 95)) (not (= in6 95)) )
(and (not (= in0 95)) (not (= in1 95)) (not (= in2 95)) (not (= in3 95)) (= in3 45) (not (= in4 95)) (not (= in5 95)) (not (= in6 95)) )
(and (not (= in0 95)) (not (= in1 95)) (not (= in2 95)) (not (= in3 95)) (not (= in4 95)) (= in4 45) (not (= in5 95)) (not (= in6 95)) )
(and (not (= in0 95)) (not (= in1 95)) (not (= in2 95)) (not (= in3 95)) (not (= in4 95)) (not (= in5 95)) (= in5 45) (not (= in6 95)) )
(and (not (= in0 95)) (not (= in1 95)) (not (= in2 95)) (not (= in3 95)) (not (= in4 95)) (not (= in5 95)) (not (= in6 95)) (= in6 45) )
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (not ( = in0 95))  ( =  in0 45)) (not ( = in1 95)))  ( =  in1 45)) (not ( = in2 95)))  ( =  in2 45)) (not ( = in3 95)))  ( =  in3 45)) (not ( = in4 95)))  ( =  in4 45)) (not ( = in5 95)))  ( =  in5 45)) (not ( = in6 95)))  ( =  in6 45)))
))
(check-sat)
(pop)
