; Combined SMT for checking equivalence
; Original constants:
(declare-const put10_0 Int)
(declare-const get0 Int)
(declare-const get1 Int)
(declare-const put3_0 Int)
(declare-const put2_1 Int)
(declare-const put2_0 Int)
(declare-const put1_1 Int)
(declare-const put5_0 Int)
(declare-const put4_1 Int)
(declare-const put4_0 Int)
(declare-const put3_1 Int)
(declare-const put1_0 Int)
(declare-const put0_0 Int)
(declare-const put0_1 Int)
(declare-const put13_0 Int)
(declare-const put12_1 Int)
(declare-const put14_0 Int)
(declare-const put13_1 Int)
(declare-const put9_1 Int)
(declare-const put11_0 Int)
(declare-const put10_1 Int)
(declare-const put12_0 Int)
(declare-const put11_1 Int)
(declare-const put7_0 Int)
(declare-const put6_1 Int)
(declare-const put6_0 Int)
(declare-const put5_1 Int)
(declare-const put9_0 Int)
(declare-const put14_1 Int)
(declare-const put8_1 Int)
(declare-const put8_0 Int)
(declare-const put7_1 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 15))  ( =  0 ( mod  ( +  put1_1 put1_0) 15)))  ( =  0 ( mod  ( +  put2_1 put2_0) 15)))  ( =  0 ( mod  ( +  put3_1 put3_0) 15)))  ( =  0 ( mod  ( +  put4_1 put4_0) 15)))  ( =  0 ( mod  ( +  put5_1 put5_0) 15)))  ( =  0 ( mod  ( +  put6_1 put6_0) 15)))  ( =  0 ( mod  ( +  put7_1 put7_0) 15)))  ( =  0 ( mod  ( +  put8_1 put8_0) 15)))  ( =  0 ( mod  ( +  put9_1 put9_0) 15)))  ( =  0 ( mod  ( +  put10_1 put10_0) 15)))  ( =  0 ( mod  ( +  put11_1 put11_0) 15)))  ( =  0 ( mod  ( +  put12_1 put12_0) 15)))  ( =  0 ( mod  ( +  put13_1 put13_0) 15)))  ( =  0 ( mod  ( +  put14_1 put14_0) 15)))  ( =  0 ( mod  ( +  get1 get0) 15))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))) (not ( = put6_0 get0))) (not ( = put7_0 get0))) (not ( = put8_0 get0))) (not ( = put9_0 get0))) (not ( = put10_0 get0))) (not ( = put11_0 get0))) (not ( = put12_0 get0))) (not ( = put13_0 get0))) (not ( = put14_0 get0))))
(pop)

; Generated constraints (B):
(push)
(assert (and  ( = 0 ( mod ( +  put0_0  put0_1 ) 15))  ( = 0 ( mod ( +  put1_0  put1_1 ) 15))  ( = 0 ( mod ( +  put2_0  put2_1 ) 15))  ( = 0 ( mod ( +  put3_0  put3_1 ) 15))  ( = 0 ( mod ( +  put4_0  put4_1 ) 15))  ( = 0 ( mod ( +  put5_0  put5_1 ) 15))  ( = 0 ( mod ( +  put6_0  put6_1 ) 15))  ( = 0 ( mod ( +  put7_0  put7_1 ) 15))  ( = 0 ( mod ( +  put8_0  put8_1 ) 15))  ( = 0 ( mod ( +  put9_0  put9_1 ) 15))  ( = 0 ( mod ( +  put10_0  put10_1 ) 15))  ( = 0 ( mod ( +  put11_0  put11_1 ) 15))  ( = 0 ( mod ( +  put12_0  put12_1 ) 15))  ( = 0 ( mod ( +  put13_0  put13_1 ) 15))  ( = 0 ( mod ( +  put14_0  put14_1 ) 15))  ( = 0 ( mod ( + get1 get0) 15))  (not ( = put0_0 get0))  (not ( = put0_0 put1_0))  (not ( = put0_0 put2_0))  (not ( = put0_0 put3_0))  (not ( = put0_0 put4_0))  (not ( = put0_0 put5_0))  (not ( = put0_0 put6_0))  (not ( = put0_0 put7_0))  (not ( = put0_0 put8_0))  (not ( = put0_0 put9_0))  (not ( = put0_0 put10_0))  (not ( = put0_0 put11_0))  (not ( = put0_0 put12_0))  (not ( = put0_0 put13_0))  (not ( = put0_0 put14_0))  (not ( = put1_0 get0))  (not ( = put1_0 put2_0))  (not ( = put1_0 put3_0))  (not ( = put1_0 put4_0))  (not ( = put1_0 put5_0))  (not ( = put1_0 put6_0))  (not ( = put1_0 put7_0))  (not ( = put1_0 put8_0))  (not ( = put1_0 put9_0))  (not ( = put1_0 put10_0))  (not ( = put1_0 put11_0))  (not ( = put1_0 put12_0))  (not ( = put1_0 put13_0))  (not ( = put1_0 put14_0))  (not ( = put2_0 get0))  (not ( = put2_0 put3_0))  (not ( = put2_0 put4_0))  (not ( = put2_0 put5_0))  (not ( = put2_0 put6_0))  (not ( = put2_0 put7_0))  (not ( = put2_0 put8_0))  (not ( = put2_0 put9_0))  (not ( = put2_0 put10_0))  (not ( = put2_0 put11_0))  (not ( = put2_0 put12_0))  (not ( = put2_0 put13_0))  (not ( = put2_0 put14_0))  (not ( = put3_0 get0))  (not ( = put3_0 put4_0))  (not ( = put3_0 put5_0))  (not ( = put3_0 put6_0))  (not ( = put3_0 put7_0))  (not ( = put3_0 put8_0))  (not ( = put3_0 put9_0))  (not ( = put3_0 put10_0))  (not ( = put3_0 put11_0))  (not ( = put3_0 put12_0))  (not ( = put3_0 put13_0))  (not ( = put3_0 put14_0))  (not ( = put4_0 get0))  (not ( = put4_0 put5_0))  (not ( = put4_0 put6_0))  (not ( = put4_0 put7_0))  (not ( = put4_0 put8_0))  (not ( = put4_0 put9_0))  (not ( = put4_0 put10_0))  (not ( = put4_0 put11_0))  (not ( = put4_0 put12_0))  (not ( = put4_0 put13_0))  (not ( = put4_0 put14_0))  (not ( = put5_0 get0))  (not ( = put5_0 put6_0))  (not ( = put5_0 put7_0))  (not ( = put5_0 put8_0))  (not ( = put5_0 put9_0))  (not ( = put5_0 put10_0))  (not ( = put5_0 put11_0))  (not ( = put5_0 put12_0))  (not ( = put5_0 put13_0))  (not ( = put5_0 put14_0))  (not ( = put6_0 get0))  (not ( = put6_0 put7_0))  (not ( = put6_0 put8_0))  (not ( = put6_0 put9_0))  (not ( = put6_0 put10_0))  (not ( = put6_0 put11_0))  (not ( = put6_0 put12_0))  (not ( = put6_0 put13_0))  (not ( = put6_0 put14_0))  (not ( = put7_0 get0))  (not ( = put7_0 put8_0))  (not ( = put7_0 put9_0))  (not ( = put7_0 put10_0))  (not ( = put7_0 put11_0))  (not ( = put7_0 put12_0))  (not ( = put7_0 put13_0))  (not ( = put7_0 put14_0))  (not ( = put8_0 get0))  (not ( = put8_0 put9_0))  (not ( = put8_0 put10_0))  (not ( = put8_0 put11_0))  (not ( = put8_0 put12_0))  (not ( = put8_0 put13_0))  (not ( = put8_0 put14_0))  (not ( = put9_0 get0))  (not ( = put9_0 put10_0))  (not ( = put9_0 put11_0))  (not ( = put9_0 put12_0))  (not ( = put9_0 put13_0))  (not ( = put9_0 put14_0))  (not ( = put10_0 get0))  (not ( = put10_0 put11_0))  (not ( = put10_0 put12_0))  (not ( = put10_0 put13_0))  (not ( = put10_0 put14_0))  (not ( = put11_0 get0))  (not ( = put11_0 put12_0))  (not ( = put11_0 put13_0))  (not ( = put11_0 put14_0))  (not ( = put12_0 get0))  (not ( = put12_0 put13_0))  (not ( = put12_0 put14_0))  (not ( = put13_0 get0))  (not ( = put13_0 put14_0))  (not ( = put14_0 get0)) ))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 15))  ( =  0 ( mod  ( +  put1_1 put1_0) 15)))  ( =  0 ( mod  ( +  put2_1 put2_0) 15)))  ( =  0 ( mod  ( +  put3_1 put3_0) 15)))  ( =  0 ( mod  ( +  put4_1 put4_0) 15)))  ( =  0 ( mod  ( +  put5_1 put5_0) 15)))  ( =  0 ( mod  ( +  put6_1 put6_0) 15)))  ( =  0 ( mod  ( +  put7_1 put7_0) 15)))  ( =  0 ( mod  ( +  put8_1 put8_0) 15)))  ( =  0 ( mod  ( +  put9_1 put9_0) 15)))  ( =  0 ( mod  ( +  put10_1 put10_0) 15)))  ( =  0 ( mod  ( +  put11_1 put11_0) 15)))  ( =  0 ( mod  ( +  put12_1 put12_0) 15)))  ( =  0 ( mod  ( +  put13_1 put13_0) 15)))  ( =  0 ( mod  ( +  put14_1 put14_0) 15)))  ( =  0 ( mod  ( +  get1 get0) 15))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))) (not ( = put6_0 get0))) (not ( = put7_0 get0))) (not ( = put8_0 get0))) (not ( = put9_0 get0))) (not ( = put10_0 get0))) (not ( = put11_0 get0))) (not ( = put12_0 get0))) (not ( = put13_0 get0))) (not ( = put14_0 get0))))
(assert (not
(and (and  ( = 0 ( mod ( +  put0_0  put0_1 ) 15))  ( = 0 ( mod ( +  put1_0  put1_1 ) 15))  ( = 0 ( mod ( +  put2_0  put2_1 ) 15))  ( = 0 ( mod ( +  put3_0  put3_1 ) 15))  ( = 0 ( mod ( +  put4_0  put4_1 ) 15))  ( = 0 ( mod ( +  put5_0  put5_1 ) 15))  ( = 0 ( mod ( +  put6_0  put6_1 ) 15))  ( = 0 ( mod ( +  put7_0  put7_1 ) 15))  ( = 0 ( mod ( +  put8_0  put8_1 ) 15))  ( = 0 ( mod ( +  put9_0  put9_1 ) 15))  ( = 0 ( mod ( +  put10_0  put10_1 ) 15))  ( = 0 ( mod ( +  put11_0  put11_1 ) 15))  ( = 0 ( mod ( +  put12_0  put12_1 ) 15))  ( = 0 ( mod ( +  put13_0  put13_1 ) 15))  ( = 0 ( mod ( +  put14_0  put14_1 ) 15))  ( = 0 ( mod ( + get1 get0) 15))  (not ( = put0_0 get0))  (not ( = put0_0 put1_0))  (not ( = put0_0 put2_0))  (not ( = put0_0 put3_0))  (not ( = put0_0 put4_0))  (not ( = put0_0 put5_0))  (not ( = put0_0 put6_0))  (not ( = put0_0 put7_0))  (not ( = put0_0 put8_0))  (not ( = put0_0 put9_0))  (not ( = put0_0 put10_0))  (not ( = put0_0 put11_0))  (not ( = put0_0 put12_0))  (not ( = put0_0 put13_0))  (not ( = put0_0 put14_0))  (not ( = put1_0 get0))  (not ( = put1_0 put2_0))  (not ( = put1_0 put3_0))  (not ( = put1_0 put4_0))  (not ( = put1_0 put5_0))  (not ( = put1_0 put6_0))  (not ( = put1_0 put7_0))  (not ( = put1_0 put8_0))  (not ( = put1_0 put9_0))  (not ( = put1_0 put10_0))  (not ( = put1_0 put11_0))  (not ( = put1_0 put12_0))  (not ( = put1_0 put13_0))  (not ( = put1_0 put14_0))  (not ( = put2_0 get0))  (not ( = put2_0 put3_0))  (not ( = put2_0 put4_0))  (not ( = put2_0 put5_0))  (not ( = put2_0 put6_0))  (not ( = put2_0 put7_0))  (not ( = put2_0 put8_0))  (not ( = put2_0 put9_0))  (not ( = put2_0 put10_0))  (not ( = put2_0 put11_0))  (not ( = put2_0 put12_0))  (not ( = put2_0 put13_0))  (not ( = put2_0 put14_0))  (not ( = put3_0 get0))  (not ( = put3_0 put4_0))  (not ( = put3_0 put5_0))  (not ( = put3_0 put6_0))  (not ( = put3_0 put7_0))  (not ( = put3_0 put8_0))  (not ( = put3_0 put9_0))  (not ( = put3_0 put10_0))  (not ( = put3_0 put11_0))  (not ( = put3_0 put12_0))  (not ( = put3_0 put13_0))  (not ( = put3_0 put14_0))  (not ( = put4_0 get0))  (not ( = put4_0 put5_0))  (not ( = put4_0 put6_0))  (not ( = put4_0 put7_0))  (not ( = put4_0 put8_0))  (not ( = put4_0 put9_0))  (not ( = put4_0 put10_0))  (not ( = put4_0 put11_0))  (not ( = put4_0 put12_0))  (not ( = put4_0 put13_0))  (not ( = put4_0 put14_0))  (not ( = put5_0 get0))  (not ( = put5_0 put6_0))  (not ( = put5_0 put7_0))  (not ( = put5_0 put8_0))  (not ( = put5_0 put9_0))  (not ( = put5_0 put10_0))  (not ( = put5_0 put11_0))  (not ( = put5_0 put12_0))  (not ( = put5_0 put13_0))  (not ( = put5_0 put14_0))  (not ( = put6_0 get0))  (not ( = put6_0 put7_0))  (not ( = put6_0 put8_0))  (not ( = put6_0 put9_0))  (not ( = put6_0 put10_0))  (not ( = put6_0 put11_0))  (not ( = put6_0 put12_0))  (not ( = put6_0 put13_0))  (not ( = put6_0 put14_0))  (not ( = put7_0 get0))  (not ( = put7_0 put8_0))  (not ( = put7_0 put9_0))  (not ( = put7_0 put10_0))  (not ( = put7_0 put11_0))  (not ( = put7_0 put12_0))  (not ( = put7_0 put13_0))  (not ( = put7_0 put14_0))  (not ( = put8_0 get0))  (not ( = put8_0 put9_0))  (not ( = put8_0 put10_0))  (not ( = put8_0 put11_0))  (not ( = put8_0 put12_0))  (not ( = put8_0 put13_0))  (not ( = put8_0 put14_0))  (not ( = put9_0 get0))  (not ( = put9_0 put10_0))  (not ( = put9_0 put11_0))  (not ( = put9_0 put12_0))  (not ( = put9_0 put13_0))  (not ( = put9_0 put14_0))  (not ( = put10_0 get0))  (not ( = put10_0 put11_0))  (not ( = put10_0 put12_0))  (not ( = put10_0 put13_0))  (not ( = put10_0 put14_0))  (not ( = put11_0 get0))  (not ( = put11_0 put12_0))  (not ( = put11_0 put13_0))  (not ( = put11_0 put14_0))  (not ( = put12_0 get0))  (not ( = put12_0 put13_0))  (not ( = put12_0 put14_0))  (not ( = put13_0 get0))  (not ( = put13_0 put14_0))  (not ( = put14_0 get0)) ))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and  ( = 0 ( mod ( +  put0_0  put0_1 ) 15))  ( = 0 ( mod ( +  put1_0  put1_1 ) 15))  ( = 0 ( mod ( +  put2_0  put2_1 ) 15))  ( = 0 ( mod ( +  put3_0  put3_1 ) 15))  ( = 0 ( mod ( +  put4_0  put4_1 ) 15))  ( = 0 ( mod ( +  put5_0  put5_1 ) 15))  ( = 0 ( mod ( +  put6_0  put6_1 ) 15))  ( = 0 ( mod ( +  put7_0  put7_1 ) 15))  ( = 0 ( mod ( +  put8_0  put8_1 ) 15))  ( = 0 ( mod ( +  put9_0  put9_1 ) 15))  ( = 0 ( mod ( +  put10_0  put10_1 ) 15))  ( = 0 ( mod ( +  put11_0  put11_1 ) 15))  ( = 0 ( mod ( +  put12_0  put12_1 ) 15))  ( = 0 ( mod ( +  put13_0  put13_1 ) 15))  ( = 0 ( mod ( +  put14_0  put14_1 ) 15))  ( = 0 ( mod ( + get1 get0) 15))  (not ( = put0_0 get0))  (not ( = put0_0 put1_0))  (not ( = put0_0 put2_0))  (not ( = put0_0 put3_0))  (not ( = put0_0 put4_0))  (not ( = put0_0 put5_0))  (not ( = put0_0 put6_0))  (not ( = put0_0 put7_0))  (not ( = put0_0 put8_0))  (not ( = put0_0 put9_0))  (not ( = put0_0 put10_0))  (not ( = put0_0 put11_0))  (not ( = put0_0 put12_0))  (not ( = put0_0 put13_0))  (not ( = put0_0 put14_0))  (not ( = put1_0 get0))  (not ( = put1_0 put2_0))  (not ( = put1_0 put3_0))  (not ( = put1_0 put4_0))  (not ( = put1_0 put5_0))  (not ( = put1_0 put6_0))  (not ( = put1_0 put7_0))  (not ( = put1_0 put8_0))  (not ( = put1_0 put9_0))  (not ( = put1_0 put10_0))  (not ( = put1_0 put11_0))  (not ( = put1_0 put12_0))  (not ( = put1_0 put13_0))  (not ( = put1_0 put14_0))  (not ( = put2_0 get0))  (not ( = put2_0 put3_0))  (not ( = put2_0 put4_0))  (not ( = put2_0 put5_0))  (not ( = put2_0 put6_0))  (not ( = put2_0 put7_0))  (not ( = put2_0 put8_0))  (not ( = put2_0 put9_0))  (not ( = put2_0 put10_0))  (not ( = put2_0 put11_0))  (not ( = put2_0 put12_0))  (not ( = put2_0 put13_0))  (not ( = put2_0 put14_0))  (not ( = put3_0 get0))  (not ( = put3_0 put4_0))  (not ( = put3_0 put5_0))  (not ( = put3_0 put6_0))  (not ( = put3_0 put7_0))  (not ( = put3_0 put8_0))  (not ( = put3_0 put9_0))  (not ( = put3_0 put10_0))  (not ( = put3_0 put11_0))  (not ( = put3_0 put12_0))  (not ( = put3_0 put13_0))  (not ( = put3_0 put14_0))  (not ( = put4_0 get0))  (not ( = put4_0 put5_0))  (not ( = put4_0 put6_0))  (not ( = put4_0 put7_0))  (not ( = put4_0 put8_0))  (not ( = put4_0 put9_0))  (not ( = put4_0 put10_0))  (not ( = put4_0 put11_0))  (not ( = put4_0 put12_0))  (not ( = put4_0 put13_0))  (not ( = put4_0 put14_0))  (not ( = put5_0 get0))  (not ( = put5_0 put6_0))  (not ( = put5_0 put7_0))  (not ( = put5_0 put8_0))  (not ( = put5_0 put9_0))  (not ( = put5_0 put10_0))  (not ( = put5_0 put11_0))  (not ( = put5_0 put12_0))  (not ( = put5_0 put13_0))  (not ( = put5_0 put14_0))  (not ( = put6_0 get0))  (not ( = put6_0 put7_0))  (not ( = put6_0 put8_0))  (not ( = put6_0 put9_0))  (not ( = put6_0 put10_0))  (not ( = put6_0 put11_0))  (not ( = put6_0 put12_0))  (not ( = put6_0 put13_0))  (not ( = put6_0 put14_0))  (not ( = put7_0 get0))  (not ( = put7_0 put8_0))  (not ( = put7_0 put9_0))  (not ( = put7_0 put10_0))  (not ( = put7_0 put11_0))  (not ( = put7_0 put12_0))  (not ( = put7_0 put13_0))  (not ( = put7_0 put14_0))  (not ( = put8_0 get0))  (not ( = put8_0 put9_0))  (not ( = put8_0 put10_0))  (not ( = put8_0 put11_0))  (not ( = put8_0 put12_0))  (not ( = put8_0 put13_0))  (not ( = put8_0 put14_0))  (not ( = put9_0 get0))  (not ( = put9_0 put10_0))  (not ( = put9_0 put11_0))  (not ( = put9_0 put12_0))  (not ( = put9_0 put13_0))  (not ( = put9_0 put14_0))  (not ( = put10_0 get0))  (not ( = put10_0 put11_0))  (not ( = put10_0 put12_0))  (not ( = put10_0 put13_0))  (not ( = put10_0 put14_0))  (not ( = put11_0 get0))  (not ( = put11_0 put12_0))  (not ( = put11_0 put13_0))  (not ( = put11_0 put14_0))  (not ( = put12_0 get0))  (not ( = put12_0 put13_0))  (not ( = put12_0 put14_0))  (not ( = put13_0 get0))  (not ( = put13_0 put14_0))  (not ( = put14_0 get0)) ))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 15))  ( =  0 ( mod  ( +  put1_1 put1_0) 15)))  ( =  0 ( mod  ( +  put2_1 put2_0) 15)))  ( =  0 ( mod  ( +  put3_1 put3_0) 15)))  ( =  0 ( mod  ( +  put4_1 put4_0) 15)))  ( =  0 ( mod  ( +  put5_1 put5_0) 15)))  ( =  0 ( mod  ( +  put6_1 put6_0) 15)))  ( =  0 ( mod  ( +  put7_1 put7_0) 15)))  ( =  0 ( mod  ( +  put8_1 put8_0) 15)))  ( =  0 ( mod  ( +  put9_1 put9_0) 15)))  ( =  0 ( mod  ( +  put10_1 put10_0) 15)))  ( =  0 ( mod  ( +  put11_1 put11_0) 15)))  ( =  0 ( mod  ( +  put12_1 put12_0) 15)))  ( =  0 ( mod  ( +  put13_1 put13_0) 15)))  ( =  0 ( mod  ( +  put14_1 put14_0) 15)))  ( =  0 ( mod  ( +  get1 get0) 15))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))) (not ( = put6_0 get0))) (not ( = put7_0 get0))) (not ( = put8_0 get0))) (not ( = put9_0 get0))) (not ( = put10_0 get0))) (not ( = put11_0 get0))) (not ( = put12_0 get0))) (not ( = put13_0 get0))) (not ( = put14_0 get0))))
))
(check-sat)
(pop)
