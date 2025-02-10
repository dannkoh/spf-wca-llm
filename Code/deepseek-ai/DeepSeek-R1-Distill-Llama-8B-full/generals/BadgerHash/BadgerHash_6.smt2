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
(declare-const put5_1 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 6))  ( =  0 ( mod  ( +  put1_1 put1_0) 6)))  ( =  0 ( mod  ( +  put2_1 put2_0) 6)))  ( =  0 ( mod  ( +  put3_1 put3_0) 6)))  ( =  0 ( mod  ( +  put4_1 put4_0) 6)))  ( =  0 ( mod  ( +  put5_1 put5_0) 6)))  ( =  0 ( mod  ( +  get1 get0) 6))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))))
(pop)

; Generated constraints (B):
(push)
(assert (and (mod (add put0_1 put0_0) 6))and (assert (not (eq put0_0 get0)))and (assert (and (mod (add put1_1 put1_0) 6))and (assert (not (eq put1_0 get0)))and (assert (and (mod (add put2_1 put2_0) 6))and (assert (not (eq put2_0 get0)))and (assert (and (mod (add put3_1 put3_0) 6))and (assert (not (eq put3_0 get0)))and (assert (and (mod (add put4_1 put4_0) 6))and (assert (not (eq put4_0 get0)))and (assert (and (mod (add put5_1 put5_0) 6))and (assert (not (eq put5_0 get0)))and (assert (mod (add get1 get0) 6))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 6))  ( =  0 ( mod  ( +  put1_1 put1_0) 6)))  ( =  0 ( mod  ( +  put2_1 put2_0) 6)))  ( =  0 ( mod  ( +  put3_1 put3_0) 6)))  ( =  0 ( mod  ( +  put4_1 put4_0) 6)))  ( =  0 ( mod  ( +  put5_1 put5_0) 6)))  ( =  0 ( mod  ( +  get1 get0) 6))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))))
(assert (not
(and (and (mod (add put0_1 put0_0) 6))and (assert (not (eq put0_0 get0)))and (assert (and (mod (add put1_1 put1_0) 6))and (assert (not (eq put1_0 get0)))and (assert (and (mod (add put2_1 put2_0) 6))and (assert (not (eq put2_0 get0)))and (assert (and (mod (add put3_1 put3_0) 6))and (assert (not (eq put3_0 get0)))and (assert (and (mod (add put4_1 put4_0) 6))and (assert (not (eq put4_0 get0)))and (assert (and (mod (add put5_1 put5_0) 6))and (assert (not (eq put5_0 get0)))and (assert (mod (add get1 get0) 6))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (mod (add put0_1 put0_0) 6))and (assert (not (eq put0_0 get0)))and (assert (and (mod (add put1_1 put1_0) 6))and (assert (not (eq put1_0 get0)))and (assert (and (mod (add put2_1 put2_0) 6))and (assert (not (eq put2_0 get0)))and (assert (and (mod (add put3_1 put3_0) 6))and (assert (not (eq put3_0 get0)))and (assert (and (mod (add put4_1 put4_0) 6))and (assert (not (eq put4_0 get0)))and (assert (and (mod (add put5_1 put5_0) 6))and (assert (not (eq put5_0 get0)))and (assert (mod (add get1 get0) 6))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 6))  ( =  0 ( mod  ( +  put1_1 put1_0) 6)))  ( =  0 ( mod  ( +  put2_1 put2_0) 6)))  ( =  0 ( mod  ( +  put3_1 put3_0) 6)))  ( =  0 ( mod  ( +  put4_1 put4_0) 6)))  ( =  0 ( mod  ( +  put5_1 put5_0) 6)))  ( =  0 ( mod  ( +  get1 get0) 6))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))))
))
(check-sat)
(pop)
