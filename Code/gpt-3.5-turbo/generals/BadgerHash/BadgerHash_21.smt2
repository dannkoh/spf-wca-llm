; Combined SMT for checking equivalence
; Original constants:
(declare-const put10_0 Int)
(declare-const put20_1 Int)
(declare-const put20_0 Int)
(declare-const get0 Int)
(declare-const get1 Int)
(declare-const put3_0 Int)
(declare-const put2_1 Int)
(declare-const put2_0 Int)
(declare-const put1_1 Int)
(declare-const put19_0 Int)
(declare-const put5_0 Int)
(declare-const put18_1 Int)
(declare-const put4_1 Int)
(declare-const put4_0 Int)
(declare-const put19_1 Int)
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
(declare-const put17_0 Int)
(declare-const put7_0 Int)
(declare-const put16_1 Int)
(declare-const put6_1 Int)
(declare-const put18_0 Int)
(declare-const put6_0 Int)
(declare-const put17_1 Int)
(declare-const put5_1 Int)
(declare-const put15_0 Int)
(declare-const put9_0 Int)
(declare-const put14_1 Int)
(declare-const put8_1 Int)
(declare-const put16_0 Int)
(declare-const put8_0 Int)
(declare-const put15_1 Int)
(declare-const put7_1 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 21))  ( =  0 ( mod  ( +  put1_1 put1_0) 21)))  ( =  0 ( mod  ( +  put2_1 put2_0) 21)))  ( =  0 ( mod  ( +  put3_1 put3_0) 21)))  ( =  0 ( mod  ( +  put4_1 put4_0) 21)))  ( =  0 ( mod  ( +  put5_1 put5_0) 21)))  ( =  0 ( mod  ( +  put6_1 put6_0) 21)))  ( =  0 ( mod  ( +  put7_1 put7_0) 21)))  ( =  0 ( mod  ( +  put8_1 put8_0) 21)))  ( =  0 ( mod  ( +  put9_1 put9_0) 21)))  ( =  0 ( mod  ( +  put10_1 put10_0) 21)))  ( =  0 ( mod  ( +  put11_1 put11_0) 21)))  ( =  0 ( mod  ( +  put12_1 put12_0) 21)))  ( =  0 ( mod  ( +  put13_1 put13_0) 21)))  ( =  0 ( mod  ( +  put14_1 put14_0) 21)))  ( =  0 ( mod  ( +  put15_1 put15_0) 21)))  ( =  0 ( mod  ( +  put16_1 put16_0) 21)))  ( =  0 ( mod  ( +  put17_1 put17_0) 21)))  ( =  0 ( mod  ( +  put18_1 put18_0) 21)))  ( =  0 ( mod  ( +  put19_1 put19_0) 21)))  ( =  0 ( mod  ( +  put20_1 put20_0) 21)))  ( =  0 ( mod  ( +  get1 get0) 21))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))) (not ( = put6_0 get0))) (not ( = put7_0 get0))) (not ( = put8_0 get0))) (not ( = put9_0 get0))) (not ( = put10_0 get0))) (not ( = put11_0 get0))) (not ( = put12_0 get0))) (not ( = put13_0 get0))) (not ( = put14_0 get0))) (not ( = put15_0 get0))) (not ( = put16_0 get0))) (not ( = put17_0 get0))) (not ( = put18_0 get0))) (not ( = put19_0 get0))) (not ( = put20_0 get0))))
(pop)

; Generated constraints (B):
(push)
ssert (and (= 0 (mod (+ put0_1 put0_0) 1)) (= 0 (mod (+ get1 get0) 1)) (not (= put0_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 2)) (= 0 (mod (+ get1 get0) 2)) (not (= put0_0 get0)) (not (= put1_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 3)) (= 0 (mod (+ get1 get0) 3)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 4)) (= 0 (mod (+ get1 get0) 4)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 5)) (= 0 (mod (+ get1 get0) 5)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 6)) (= 0 (mod (+ get1 get0) 6)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 7)) (= 0 (mod (+ get1 get0) 7)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0)) (not (= put6_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 8)) (= 0 (mod (+ get1 get0) 8)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0)) (not (= put6_0 get0)) (not (= put7_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 9)) (= 0 (mod (+ get1 get0) 9)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0)) (not (= put6_0 get0)) (not (= put7_0 get0)) (not (= put8_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 10)) (= 0 (mod (+ get1 get0) 10)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0)) (not (= put6_0 get0)) (not (= put7_0 get0)) (not (= put8_0 get0)) (not (= put9_0 get0))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 21))  ( =  0 ( mod  ( +  put1_1 put1_0) 21)))  ( =  0 ( mod  ( +  put2_1 put2_0) 21)))  ( =  0 ( mod  ( +  put3_1 put3_0) 21)))  ( =  0 ( mod  ( +  put4_1 put4_0) 21)))  ( =  0 ( mod  ( +  put5_1 put5_0) 21)))  ( =  0 ( mod  ( +  put6_1 put6_0) 21)))  ( =  0 ( mod  ( +  put7_1 put7_0) 21)))  ( =  0 ( mod  ( +  put8_1 put8_0) 21)))  ( =  0 ( mod  ( +  put9_1 put9_0) 21)))  ( =  0 ( mod  ( +  put10_1 put10_0) 21)))  ( =  0 ( mod  ( +  put11_1 put11_0) 21)))  ( =  0 ( mod  ( +  put12_1 put12_0) 21)))  ( =  0 ( mod  ( +  put13_1 put13_0) 21)))  ( =  0 ( mod  ( +  put14_1 put14_0) 21)))  ( =  0 ( mod  ( +  put15_1 put15_0) 21)))  ( =  0 ( mod  ( +  put16_1 put16_0) 21)))  ( =  0 ( mod  ( +  put17_1 put17_0) 21)))  ( =  0 ( mod  ( +  put18_1 put18_0) 21)))  ( =  0 ( mod  ( +  put19_1 put19_0) 21)))  ( =  0 ( mod  ( +  put20_1 put20_0) 21)))  ( =  0 ( mod  ( +  get1 get0) 21))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))) (not ( = put6_0 get0))) (not ( = put7_0 get0))) (not ( = put8_0 get0))) (not ( = put9_0 get0))) (not ( = put10_0 get0))) (not ( = put11_0 get0))) (not ( = put12_0 get0))) (not ( = put13_0 get0))) (not ( = put14_0 get0))) (not ( = put15_0 get0))) (not ( = put16_0 get0))) (not ( = put17_0 get0))) (not ( = put18_0 get0))) (not ( = put19_0 get0))) (not ( = put20_0 get0))))
(assert (not
(and (and (= 0 (mod (+ put0_1 put0_0) 2)) (= 0 (mod (+ get1 get0) 2)) (not (= put0_0 get0)) (not (= put1_0 get0))) (and (= 0 (mod (+ put0_1 put0_0) 3)) (= 0 (mod (+ get1 get0) 3)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0))) (and (= 0 (mod (+ put0_1 put0_0) 4)) (= 0 (mod (+ get1 get0) 4)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0))) (and (= 0 (mod (+ put0_1 put0_0) 5)) (= 0 (mod (+ get1 get0) 5)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0))) (and (= 0 (mod (+ put0_1 put0_0) 6)) (= 0 (mod (+ get1 get0) 6)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0))) (and (= 0 (mod (+ put0_1 put0_0) 7)) (= 0 (mod (+ get1 get0) 7)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0)) (not (= put6_0 get0))) (and (= 0 (mod (+ put0_1 put0_0) 8)) (= 0 (mod (+ get1 get0) 8)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0)) (not (= put6_0 get0)) (not (= put7_0 get0))) (and (= 0 (mod (+ put0_1 put0_0) 9)) (= 0 (mod (+ get1 get0) 9)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0)) (not (= put6_0 get0)) (not (= put7_0 get0)) (not (= put8_0 get0))) (and (= 0 (mod (+ put0_1 put0_0) 10)) (= 0 (mod (+ get1 get0) 10)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0)) (not (= put6_0 get0)) (not (= put7_0 get0)) (not (= put8_0 get0)) (not (= put9_0 get0))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
ssert (and (= 0 (mod (+ put0_1 put0_0) 1)) (= 0 (mod (+ get1 get0) 1)) (not (= put0_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 2)) (= 0 (mod (+ get1 get0) 2)) (not (= put0_0 get0)) (not (= put1_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 3)) (= 0 (mod (+ get1 get0) 3)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 4)) (= 0 (mod (+ get1 get0) 4)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 5)) (= 0 (mod (+ get1 get0) 5)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 6)) (= 0 (mod (+ get1 get0) 6)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 7)) (= 0 (mod (+ get1 get0) 7)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0)) (not (= put6_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 8)) (= 0 (mod (+ get1 get0) 8)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0)) (not (= put6_0 get0)) (not (= put7_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 9)) (= 0 (mod (+ get1 get0) 9)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0)) (not (= put6_0 get0)) (not (= put7_0 get0)) (not (= put8_0 get0))))
(assert (and (= 0 (mod (+ put0_1 put0_0) 10)) (= 0 (mod (+ get1 get0) 10)) (not (= put0_0 get0)) (not (= put1_0 get0)) (not (= put2_0 get0)) (not (= put3_0 get0)) (not (= put4_0 get0)) (not (= put5_0 get0)) (not (= put6_0 get0)) (not (= put7_0 get0)) (not (= put8_0 get0)) (not (= put9_0 get0))))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 21))  ( =  0 ( mod  ( +  put1_1 put1_0) 21)))  ( =  0 ( mod  ( +  put2_1 put2_0) 21)))  ( =  0 ( mod  ( +  put3_1 put3_0) 21)))  ( =  0 ( mod  ( +  put4_1 put4_0) 21)))  ( =  0 ( mod  ( +  put5_1 put5_0) 21)))  ( =  0 ( mod  ( +  put6_1 put6_0) 21)))  ( =  0 ( mod  ( +  put7_1 put7_0) 21)))  ( =  0 ( mod  ( +  put8_1 put8_0) 21)))  ( =  0 ( mod  ( +  put9_1 put9_0) 21)))  ( =  0 ( mod  ( +  put10_1 put10_0) 21)))  ( =  0 ( mod  ( +  put11_1 put11_0) 21)))  ( =  0 ( mod  ( +  put12_1 put12_0) 21)))  ( =  0 ( mod  ( +  put13_1 put13_0) 21)))  ( =  0 ( mod  ( +  put14_1 put14_0) 21)))  ( =  0 ( mod  ( +  put15_1 put15_0) 21)))  ( =  0 ( mod  ( +  put16_1 put16_0) 21)))  ( =  0 ( mod  ( +  put17_1 put17_0) 21)))  ( =  0 ( mod  ( +  put18_1 put18_0) 21)))  ( =  0 ( mod  ( +  put19_1 put19_0) 21)))  ( =  0 ( mod  ( +  put20_1 put20_0) 21)))  ( =  0 ( mod  ( +  get1 get0) 21))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))) (not ( = put6_0 get0))) (not ( = put7_0 get0))) (not ( = put8_0 get0))) (not ( = put9_0 get0))) (not ( = put10_0 get0))) (not ( = put11_0 get0))) (not ( = put12_0 get0))) (not ( = put13_0 get0))) (not ( = put14_0 get0))) (not ( = put15_0 get0))) (not ( = put16_0 get0))) (not ( = put17_0 get0))) (not ( = put18_0 get0))) (not ( = put19_0 get0))) (not ( = put20_0 get0))))
))
(check-sat)
(pop)
