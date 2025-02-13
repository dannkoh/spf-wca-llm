; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in9 Int)
(declare-const in12 Int)
(declare-const in15 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0))  ( =  in12 0))  ( =  in15 0)))
(pop)

; Generated constraints (B):
(push)
(assert (= in3 0)
(assert (= in6 0)
(assert (= in9 0)
(assert (= in12 0)
(assert (= in15 0)
(assert (= in18 0)
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0))  ( =  in12 0))  ( =  in15 0)))
(assert (not
(and (= in3 0 (= in6 0 (= in9 0 (= in12 0 (= in15 0 (= in18 0)
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= in3 0)
(assert (= in6 0)
(assert (= in9 0)
(assert (= in12 0)
(assert (= in15 0)
(assert (= in18 0)
(assert (not
(and (and (and (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0))  ( =  in12 0))  ( =  in15 0)))
))
(check-sat)
(pop)
