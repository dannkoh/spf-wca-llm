; Combined SMT for checking equivalence
; Original constants:
(declare-const put2_1 Int)
(declare-const put2_0 Int)
(declare-const put1_1 Int)
(declare-const put1_0 Int)
(declare-const put0_0 Int)
(declare-const put0_1 Int)
(declare-const get0 Int)
(declare-const get1 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 3))  ( =  0 ( mod  ( +  put1_1 put1_0) 3)))  ( =  0 ( mod  ( +  put2_1 put2_0) 3)))  ( =  0 ( mod  ( +  get1 get0) 3))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))))
(pop)

; Generated constraints (B):
(push)
(assert (and  ( = 0 ( mod ( +  put0_0  put0_1 ) 3))  ( = 0 ( mod ( +  put1_0  put1_1 ) 3))  ( = 0 ( mod ( +  put2_0  put2_1 ) 3))  ( = 0 ( mod ( + get1 get0) 3))  (not ( = put0_0 get0))  (not ( = put0_0 put1_0))  (not ( = put0_0 put2_0))  (not ( = put1_0 get0))  (not ( = put1_0 put2_0))  (not ( = put2_0 get0)) ))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 3))  ( =  0 ( mod  ( +  put1_1 put1_0) 3)))  ( =  0 ( mod  ( +  put2_1 put2_0) 3)))  ( =  0 ( mod  ( +  get1 get0) 3))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))))
(assert (not
(and (and  ( = 0 ( mod ( +  put0_0  put0_1 ) 3))  ( = 0 ( mod ( +  put1_0  put1_1 ) 3))  ( = 0 ( mod ( +  put2_0  put2_1 ) 3))  ( = 0 ( mod ( + get1 get0) 3))  (not ( = put0_0 get0))  (not ( = put0_0 put1_0))  (not ( = put0_0 put2_0))  (not ( = put1_0 get0))  (not ( = put1_0 put2_0))  (not ( = put2_0 get0)) ))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and  ( = 0 ( mod ( +  put0_0  put0_1 ) 3))  ( = 0 ( mod ( +  put1_0  put1_1 ) 3))  ( = 0 ( mod ( +  put2_0  put2_1 ) 3))  ( = 0 ( mod ( + get1 get0) 3))  (not ( = put0_0 get0))  (not ( = put0_0 put1_0))  (not ( = put0_0 put2_0))  (not ( = put1_0 get0))  (not ( = put1_0 put2_0))  (not ( = put2_0 get0)) ))
(assert (not
(and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 3))  ( =  0 ( mod  ( +  put1_1 put1_0) 3)))  ( =  0 ( mod  ( +  put2_1 put2_0) 3)))  ( =  0 ( mod  ( +  get1 get0) 3))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))))
))
(check-sat)
(pop)
