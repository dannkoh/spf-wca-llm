; Combined SMT for checking equivalence
; Original constants:
(declare-const put0_0 Int)
(declare-const put0_1 Int)
(declare-const get0 Int)
(declare-const get1 Int)

; Original constraints (A):
(push)
(assert (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 1))  ( =  0 ( mod  ( +  get1 get0) 1))) (not ( = put0_0 get0))))
(pop)

; Generated constraints (B):
(push)
(assert (and (= 0 (mod (+ put0_1 put0_0) 1)) (= 0 (mod (+ get1 get0) 1)) (not (= put0_0 get0))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 1))  ( =  0 ( mod  ( +  get1 get0) 1))) (not ( = put0_0 get0))))
(assert (not
(and (and (= 0 (mod (+ put0_1 put0_0) 1)) (= 0 (mod (+ get1 get0) 1)) (not (= put0_0 get0))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (= 0 (mod (+ put0_1 put0_0) 1)) (= 0 (mod (+ get1 get0) 1)) (not (= put0_0 get0))))
(assert (not
(and (and (and  ( =  0 ( mod  ( +  put0_1 put0_0) 1))  ( =  0 ( mod  ( +  get1 get0) 1))) (not ( = put0_0 get0))))
))
(check-sat)
(pop)
