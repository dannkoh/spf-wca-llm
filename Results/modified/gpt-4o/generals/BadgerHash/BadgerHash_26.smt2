; Combined SMT for checking equivalence
; Original constants:
(declare-const put25_0 Int)
(declare-const put23_1 Int)
(declare-const put23_0 Int)
(declare-const put21_1 Int)
(declare-const put25_1 Int)
(declare-const put20_1 Int)
(declare-const put20_0 Int)
(declare-const get0 Int)
(declare-const get1 Int)
(declare-const put2_1 Int)
(declare-const put2_0 Int)
(declare-const put19_0 Int)
(declare-const put4_1 Int)
(declare-const put4_0 Int)
(declare-const put19_1 Int)
(declare-const put0_0 Int)
(declare-const put0_1 Int)
(declare-const put13_0 Int)
(declare-const put13_1 Int)
(declare-const put11_0 Int)
(declare-const put11_1 Int)
(declare-const put17_0 Int)
(declare-const put6_1 Int)
(declare-const put6_0 Int)
(declare-const put17_1 Int)
(declare-const put15_0 Int)
(declare-const put8_1 Int)
(declare-const put8_0 Int)
(declare-const put15_1 Int)
(declare-const put10_0 Int)
(declare-const put24_1 Int)
(declare-const put24_0 Int)
(declare-const put22_1 Int)
(declare-const put22_0 Int)
(declare-const put21_0 Int)
(declare-const put3_0 Int)
(declare-const put1_1 Int)
(declare-const put5_0 Int)
(declare-const put18_1 Int)
(declare-const put3_1 Int)
(declare-const put1_0 Int)
(declare-const put12_1 Int)
(declare-const put14_0 Int)
(declare-const put9_1 Int)
(declare-const put10_1 Int)
(declare-const put12_0 Int)
(declare-const put7_0 Int)
(declare-const put16_1 Int)
(declare-const put18_0 Int)
(declare-const put5_1 Int)
(declare-const put9_0 Int)
(declare-const put14_1 Int)
(declare-const put16_0 Int)
(declare-const put7_1 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 26))  ( =  0 ( mod  ( +  put1_1 put1_0) 26)))  ( =  0 ( mod  ( +  put2_1 put2_0) 26)))  ( =  0 ( mod  ( +  put3_1 put3_0) 26)))  ( =  0 ( mod  ( +  put4_1 put4_0) 26)))  ( =  0 ( mod  ( +  put5_1 put5_0) 26)))  ( =  0 ( mod  ( +  put6_1 put6_0) 26)))  ( =  0 ( mod  ( +  put7_1 put7_0) 26)))  ( =  0 ( mod  ( +  put8_1 put8_0) 26)))  ( =  0 ( mod  ( +  put9_1 put9_0) 26)))  ( =  0 ( mod  ( +  put10_1 put10_0) 26)))  ( =  0 ( mod  ( +  put11_1 put11_0) 26)))  ( =  0 ( mod  ( +  put12_1 put12_0) 26)))  ( =  0 ( mod  ( +  put13_1 put13_0) 26)))  ( =  0 ( mod  ( +  put14_1 put14_0) 26)))  ( =  0 ( mod  ( +  put15_1 put15_0) 26)))  ( =  0 ( mod  ( +  put16_1 put16_0) 26)))  ( =  0 ( mod  ( +  put17_1 put17_0) 26)))  ( =  0 ( mod  ( +  put18_1 put18_0) 26)))  ( =  0 ( mod  ( +  put19_1 put19_0) 26)))  ( =  0 ( mod  ( +  put20_1 put20_0) 26)))  ( =  0 ( mod  ( +  put21_1 put21_0) 26)))  ( =  0 ( mod  ( +  put22_1 put22_0) 26)))  ( =  0 ( mod  ( +  put23_1 put23_0) 26)))  ( =  0 ( mod  ( +  put24_1 put24_0) 26)))  ( =  0 ( mod  ( +  put25_1 put25_0) 26)))  ( =  0 ( mod  ( +  get1 get0) 26))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))) (not ( = put6_0 get0))) (not ( = put7_0 get0))) (not ( = put8_0 get0))) (not ( = put9_0 get0))) (not ( = put10_0 get0))) (not ( = put11_0 get0))) (not ( = put12_0 get0))) (not ( = put13_0 get0))) (not ( = put14_0 get0))) (not ( = put15_0 get0))) (not ( = put16_0 get0))) (not ( = put17_0 get0))) (not ( = put18_0 get0))) (not ( = put19_0 get0))) (not ( = put20_0 get0))) (not ( = put21_0 get0))) (not ( = put22_0 get0))) (not ( = put23_0 get0))) (not ( = put24_0 get0))) (not ( = put25_0 get0))))
(pop)

; Generated constraints (B):
(push)
(assert (and (= 0 (mod (+ put0_1 put0_0) 26)) (not (= put0_0 get0)) (= 0 (mod (+ put1_1 put1_0) 26)) (not (= put1_0 get0)) (= 0 (mod (+ put2_1 put2_0) 26)) (not (= put2_0 get0)) (= 0 (mod (+ put3_1 put3_0) 26)) (not (= put3_0 get0)) (= 0 (mod (+ put4_1 put4_0) 26)) (not (= put4_0 get0)) (= 0 (mod (+ put5_1 put5_0) 26)) (not (= put5_0 get0)) (= 0 (mod (+ put6_1 put6_0) 26)) (not (= put6_0 get0)) (= 0 (mod (+ put7_1 put7_0) 26)) (not (= put7_0 get0)) (= 0 (mod (+ put8_1 put8_0) 26)) (not (= put8_0 get0)) (= 0 (mod (+ put9_1 put9_0) 26)) (not (= put9_0 get0)) (= 0 (mod (+ put10_1 put10_0) 26)) (not (= put10_0 get0)) (= 0 (mod (+ put11_1 put11_0) 26)) (not (= put11_0 get0)) (= 0 (mod (+ put12_1 put12_0) 26)) (not (= put12_0 get0)) (= 0 (mod (+ put13_1 put13_0) 26)) (not (= put13_0 get0)) (= 0 (mod (+ put14_1 put14_0) 26)) (not (= put14_0 get0)) (= 0 (mod (+ put15_1 put15_0) 26)) (not (= put15_0 get0)) (= 0 (mod (+ put16_1 put16_0) 26)) (not (= put16_0 get0)) (= 0 (mod (+ put17_1 put17_0) 26)) (not (= put17_0 get0)) (= 0 (mod (+ put18_1 put18_0) 26)) (not (= put18_0 get0)) (= 0 (mod (+ put19_1 put19_0) 26)) (not (= put19_0 get0)) (= 0 (mod (+ put20_1 put20_0) 26)) (not (= put20_0 get0)) (= 0 (mod (+ put21_1 put21_0) 26)) (not (= put21_0 get0)) (= 0 (mod (+ put22_1 put22_0) 26)) (not (= put22_0 get0)) (= 0 (mod (+ put23_1 put23_0) 26)) (not (= put23_0 get0)) (= 0 (mod (+ put24_1 put24_0) 26)) (not (= put24_0 get0)) (= 0 (mod (+ put25_1 put25_0) 26)) (not (= put25_0 get0)) (= 0 (mod (+ get1 get0) 26))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 26))  ( =  0 ( mod  ( +  put1_1 put1_0) 26)))  ( =  0 ( mod  ( +  put2_1 put2_0) 26)))  ( =  0 ( mod  ( +  put3_1 put3_0) 26)))  ( =  0 ( mod  ( +  put4_1 put4_0) 26)))  ( =  0 ( mod  ( +  put5_1 put5_0) 26)))  ( =  0 ( mod  ( +  put6_1 put6_0) 26)))  ( =  0 ( mod  ( +  put7_1 put7_0) 26)))  ( =  0 ( mod  ( +  put8_1 put8_0) 26)))  ( =  0 ( mod  ( +  put9_1 put9_0) 26)))  ( =  0 ( mod  ( +  put10_1 put10_0) 26)))  ( =  0 ( mod  ( +  put11_1 put11_0) 26)))  ( =  0 ( mod  ( +  put12_1 put12_0) 26)))  ( =  0 ( mod  ( +  put13_1 put13_0) 26)))  ( =  0 ( mod  ( +  put14_1 put14_0) 26)))  ( =  0 ( mod  ( +  put15_1 put15_0) 26)))  ( =  0 ( mod  ( +  put16_1 put16_0) 26)))  ( =  0 ( mod  ( +  put17_1 put17_0) 26)))  ( =  0 ( mod  ( +  put18_1 put18_0) 26)))  ( =  0 ( mod  ( +  put19_1 put19_0) 26)))  ( =  0 ( mod  ( +  put20_1 put20_0) 26)))  ( =  0 ( mod  ( +  put21_1 put21_0) 26)))  ( =  0 ( mod  ( +  put22_1 put22_0) 26)))  ( =  0 ( mod  ( +  put23_1 put23_0) 26)))  ( =  0 ( mod  ( +  put24_1 put24_0) 26)))  ( =  0 ( mod  ( +  put25_1 put25_0) 26)))  ( =  0 ( mod  ( +  get1 get0) 26))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))) (not ( = put6_0 get0))) (not ( = put7_0 get0))) (not ( = put8_0 get0))) (not ( = put9_0 get0))) (not ( = put10_0 get0))) (not ( = put11_0 get0))) (not ( = put12_0 get0))) (not ( = put13_0 get0))) (not ( = put14_0 get0))) (not ( = put15_0 get0))) (not ( = put16_0 get0))) (not ( = put17_0 get0))) (not ( = put18_0 get0))) (not ( = put19_0 get0))) (not ( = put20_0 get0))) (not ( = put21_0 get0))) (not ( = put22_0 get0))) (not ( = put23_0 get0))) (not ( = put24_0 get0))) (not ( = put25_0 get0))))
(assert (not
(and (and (= 0 (mod (+ put0_1 put0_0) 26)) (not (= put0_0 get0)) (= 0 (mod (+ put1_1 put1_0) 26)) (not (= put1_0 get0)) (= 0 (mod (+ put2_1 put2_0) 26)) (not (= put2_0 get0)) (= 0 (mod (+ put3_1 put3_0) 26)) (not (= put3_0 get0)) (= 0 (mod (+ put4_1 put4_0) 26)) (not (= put4_0 get0)) (= 0 (mod (+ put5_1 put5_0) 26)) (not (= put5_0 get0)) (= 0 (mod (+ put6_1 put6_0) 26)) (not (= put6_0 get0)) (= 0 (mod (+ put7_1 put7_0) 26)) (not (= put7_0 get0)) (= 0 (mod (+ put8_1 put8_0) 26)) (not (= put8_0 get0)) (= 0 (mod (+ put9_1 put9_0) 26)) (not (= put9_0 get0)) (= 0 (mod (+ put10_1 put10_0) 26)) (not (= put10_0 get0)) (= 0 (mod (+ put11_1 put11_0) 26)) (not (= put11_0 get0)) (= 0 (mod (+ put12_1 put12_0) 26)) (not (= put12_0 get0)) (= 0 (mod (+ put13_1 put13_0) 26)) (not (= put13_0 get0)) (= 0 (mod (+ put14_1 put14_0) 26)) (not (= put14_0 get0)) (= 0 (mod (+ put15_1 put15_0) 26)) (not (= put15_0 get0)) (= 0 (mod (+ put16_1 put16_0) 26)) (not (= put16_0 get0)) (= 0 (mod (+ put17_1 put17_0) 26)) (not (= put17_0 get0)) (= 0 (mod (+ put18_1 put18_0) 26)) (not (= put18_0 get0)) (= 0 (mod (+ put19_1 put19_0) 26)) (not (= put19_0 get0)) (= 0 (mod (+ put20_1 put20_0) 26)) (not (= put20_0 get0)) (= 0 (mod (+ put21_1 put21_0) 26)) (not (= put21_0 get0)) (= 0 (mod (+ put22_1 put22_0) 26)) (not (= put22_0 get0)) (= 0 (mod (+ put23_1 put23_0) 26)) (not (= put23_0 get0)) (= 0 (mod (+ put24_1 put24_0) 26)) (not (= put24_0 get0)) (= 0 (mod (+ put25_1 put25_0) 26)) (not (= put25_0 get0)) (= 0 (mod (+ get1 get0) 26))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (= 0 (mod (+ put0_1 put0_0) 26)) (not (= put0_0 get0)) (= 0 (mod (+ put1_1 put1_0) 26)) (not (= put1_0 get0)) (= 0 (mod (+ put2_1 put2_0) 26)) (not (= put2_0 get0)) (= 0 (mod (+ put3_1 put3_0) 26)) (not (= put3_0 get0)) (= 0 (mod (+ put4_1 put4_0) 26)) (not (= put4_0 get0)) (= 0 (mod (+ put5_1 put5_0) 26)) (not (= put5_0 get0)) (= 0 (mod (+ put6_1 put6_0) 26)) (not (= put6_0 get0)) (= 0 (mod (+ put7_1 put7_0) 26)) (not (= put7_0 get0)) (= 0 (mod (+ put8_1 put8_0) 26)) (not (= put8_0 get0)) (= 0 (mod (+ put9_1 put9_0) 26)) (not (= put9_0 get0)) (= 0 (mod (+ put10_1 put10_0) 26)) (not (= put10_0 get0)) (= 0 (mod (+ put11_1 put11_0) 26)) (not (= put11_0 get0)) (= 0 (mod (+ put12_1 put12_0) 26)) (not (= put12_0 get0)) (= 0 (mod (+ put13_1 put13_0) 26)) (not (= put13_0 get0)) (= 0 (mod (+ put14_1 put14_0) 26)) (not (= put14_0 get0)) (= 0 (mod (+ put15_1 put15_0) 26)) (not (= put15_0 get0)) (= 0 (mod (+ put16_1 put16_0) 26)) (not (= put16_0 get0)) (= 0 (mod (+ put17_1 put17_0) 26)) (not (= put17_0 get0)) (= 0 (mod (+ put18_1 put18_0) 26)) (not (= put18_0 get0)) (= 0 (mod (+ put19_1 put19_0) 26)) (not (= put19_0 get0)) (= 0 (mod (+ put20_1 put20_0) 26)) (not (= put20_0 get0)) (= 0 (mod (+ put21_1 put21_0) 26)) (not (= put21_0 get0)) (= 0 (mod (+ put22_1 put22_0) 26)) (not (= put22_0 get0)) (= 0 (mod (+ put23_1 put23_0) 26)) (not (= put23_0 get0)) (= 0 (mod (+ put24_1 put24_0) 26)) (not (= put24_0 get0)) (= 0 (mod (+ put25_1 put25_0) 26)) (not (= put25_0 get0)) (= 0 (mod (+ get1 get0) 26))))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 26))  ( =  0 ( mod  ( +  put1_1 put1_0) 26)))  ( =  0 ( mod  ( +  put2_1 put2_0) 26)))  ( =  0 ( mod  ( +  put3_1 put3_0) 26)))  ( =  0 ( mod  ( +  put4_1 put4_0) 26)))  ( =  0 ( mod  ( +  put5_1 put5_0) 26)))  ( =  0 ( mod  ( +  put6_1 put6_0) 26)))  ( =  0 ( mod  ( +  put7_1 put7_0) 26)))  ( =  0 ( mod  ( +  put8_1 put8_0) 26)))  ( =  0 ( mod  ( +  put9_1 put9_0) 26)))  ( =  0 ( mod  ( +  put10_1 put10_0) 26)))  ( =  0 ( mod  ( +  put11_1 put11_0) 26)))  ( =  0 ( mod  ( +  put12_1 put12_0) 26)))  ( =  0 ( mod  ( +  put13_1 put13_0) 26)))  ( =  0 ( mod  ( +  put14_1 put14_0) 26)))  ( =  0 ( mod  ( +  put15_1 put15_0) 26)))  ( =  0 ( mod  ( +  put16_1 put16_0) 26)))  ( =  0 ( mod  ( +  put17_1 put17_0) 26)))  ( =  0 ( mod  ( +  put18_1 put18_0) 26)))  ( =  0 ( mod  ( +  put19_1 put19_0) 26)))  ( =  0 ( mod  ( +  put20_1 put20_0) 26)))  ( =  0 ( mod  ( +  put21_1 put21_0) 26)))  ( =  0 ( mod  ( +  put22_1 put22_0) 26)))  ( =  0 ( mod  ( +  put23_1 put23_0) 26)))  ( =  0 ( mod  ( +  put24_1 put24_0) 26)))  ( =  0 ( mod  ( +  put25_1 put25_0) 26)))  ( =  0 ( mod  ( +  get1 get0) 26))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))) (not ( = put6_0 get0))) (not ( = put7_0 get0))) (not ( = put8_0 get0))) (not ( = put9_0 get0))) (not ( = put10_0 get0))) (not ( = put11_0 get0))) (not ( = put12_0 get0))) (not ( = put13_0 get0))) (not ( = put14_0 get0))) (not ( = put15_0 get0))) (not ( = put16_0 get0))) (not ( = put17_0 get0))) (not ( = put18_0 get0))) (not ( = put19_0 get0))) (not ( = put20_0 get0))) (not ( = put21_0 get0))) (not ( = put22_0 get0))) (not ( = put23_0 get0))) (not ( = put24_0 get0))) (not ( = put25_0 get0))))
))
(check-sat)
(pop)
