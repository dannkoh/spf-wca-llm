; Combined SMT for checking equivalence
; Original constants:
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
(declare-const put7_0 Int)
(declare-const put6_1 Int)
(declare-const put6_0 Int)
(declare-const put5_1 Int)
(declare-const put8_1 Int)
(declare-const put8_0 Int)
(declare-const put7_1 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 9))  ( =  0 ( mod  ( +  put1_1 put1_0) 9)))  ( =  0 ( mod  ( +  put2_1 put2_0) 9)))  ( =  0 ( mod  ( +  put3_1 put3_0) 9)))  ( =  0 ( mod  ( +  put4_1 put4_0) 9)))  ( =  0 ( mod  ( +  put5_1 put5_0) 9)))  ( =  0 ( mod  ( +  put6_1 put6_0) 9)))  ( =  0 ( mod  ( +  put7_1 put7_0) 9)))  ( =  0 ( mod  ( +  put8_1 put8_0) 9)))  ( =  0 ( mod  ( +  get1 get0) 9))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))) (not ( = put6_0 get0))) (not ( = put7_0 get0))) (not ( = put8_0 get0))))
(pop)

; Generated constraints (B):
(push)
(assert (and  ( = 0 (mod (+ put0_1 put0_0) 9))  ( = 0 (mod (+ put1_1 put1_0) 9))  ( = 0 (mod (+ put2_1 put2_0) 9))  ( = 0 (mod (+ put3_1 put3_0) 9))  ( = 0 (mod (+ put4_1 put4_0) 9))  ( = 0 (mod (+ put5_1 put5_0) 9))  ( = 0 (mod (+ put6_1 put6_0) 9))  ( = 0 (mod (+ put7_1 put7_0) 9))  ( = 0 (mod (+ put8_1 put8_0) 9))  ( = 0 (mod (+ get1 get0) 9))  (not ( = put0_0 get0))  (not ( = put1_0 get0))  (not ( = put2_0 get0))  (not ( = put3_0 get0))  (not ( = put4_0 get0))  (not ( = put5_0 get0))  (not ( = put6_0 get0))  (not ( = put7_0 get0))  (not ( = put8_0 get0)) ))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 9))  ( =  0 ( mod  ( +  put1_1 put1_0) 9)))  ( =  0 ( mod  ( +  put2_1 put2_0) 9)))  ( =  0 ( mod  ( +  put3_1 put3_0) 9)))  ( =  0 ( mod  ( +  put4_1 put4_0) 9)))  ( =  0 ( mod  ( +  put5_1 put5_0) 9)))  ( =  0 ( mod  ( +  put6_1 put6_0) 9)))  ( =  0 ( mod  ( +  put7_1 put7_0) 9)))  ( =  0 ( mod  ( +  put8_1 put8_0) 9)))  ( =  0 ( mod  ( +  get1 get0) 9))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))) (not ( = put6_0 get0))) (not ( = put7_0 get0))) (not ( = put8_0 get0))))
(assert (not
(and (and  ( = 0 (mod (+ put0_1 put0_0) 9))  ( = 0 (mod (+ put1_1 put1_0) 9))  ( = 0 (mod (+ put2_1 put2_0) 9))  ( = 0 (mod (+ put3_1 put3_0) 9))  ( = 0 (mod (+ put4_1 put4_0) 9))  ( = 0 (mod (+ put5_1 put5_0) 9))  ( = 0 (mod (+ put6_1 put6_0) 9))  ( = 0 (mod (+ put7_1 put7_0) 9))  ( = 0 (mod (+ put8_1 put8_0) 9))  ( = 0 (mod (+ get1 get0) 9))  (not ( = put0_0 get0))  (not ( = put1_0 get0))  (not ( = put2_0 get0))  (not ( = put3_0 get0))  (not ( = put4_0 get0))  (not ( = put5_0 get0))  (not ( = put6_0 get0))  (not ( = put7_0 get0))  (not ( = put8_0 get0)) ))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and  ( = 0 (mod (+ put0_1 put0_0) 9))  ( = 0 (mod (+ put1_1 put1_0) 9))  ( = 0 (mod (+ put2_1 put2_0) 9))  ( = 0 (mod (+ put3_1 put3_0) 9))  ( = 0 (mod (+ put4_1 put4_0) 9))  ( = 0 (mod (+ put5_1 put5_0) 9))  ( = 0 (mod (+ put6_1 put6_0) 9))  ( = 0 (mod (+ put7_1 put7_0) 9))  ( = 0 (mod (+ put8_1 put8_0) 9))  ( = 0 (mod (+ get1 get0) 9))  (not ( = put0_0 get0))  (not ( = put1_0 get0))  (not ( = put2_0 get0))  (not ( = put3_0 get0))  (not ( = put4_0 get0))  (not ( = put5_0 get0))  (not ( = put6_0 get0))  (not ( = put7_0 get0))  (not ( = put8_0 get0)) ))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 9))  ( =  0 ( mod  ( +  put1_1 put1_0) 9)))  ( =  0 ( mod  ( +  put2_1 put2_0) 9)))  ( =  0 ( mod  ( +  put3_1 put3_0) 9)))  ( =  0 ( mod  ( +  put4_1 put4_0) 9)))  ( =  0 ( mod  ( +  put5_1 put5_0) 9)))  ( =  0 ( mod  ( +  put6_1 put6_0) 9)))  ( =  0 ( mod  ( +  put7_1 put7_0) 9)))  ( =  0 ( mod  ( +  put8_1 put8_0) 9)))  ( =  0 ( mod  ( +  get1 get0) 9))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))) (not ( = put6_0 get0))) (not ( = put7_0 get0))) (not ( = put8_0 get0))))
))
(check-sat)
(pop)
