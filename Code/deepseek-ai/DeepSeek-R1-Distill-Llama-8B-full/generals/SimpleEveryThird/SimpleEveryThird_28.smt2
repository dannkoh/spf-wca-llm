; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in21 Int)
(declare-const in9 Int)
(declare-const in24 Int)
(declare-const in12 Int)
(declare-const in15 Int)
(declare-const in27 Int)
(declare-const in18 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0))  ( =  in12 0))  ( =  in15 0))  ( =  in18 0))  ( =  in21 0))  ( =  in24 0))  ( =  in27 0)))
(pop)

; Generated constraints (B):
(push)
(and(assert ( = in3 0))and (assert ( = in6 0))and (assert ( = in9 0))and (assert ( = in12 0))and (assert ( = in15 0))and (assert ( = in18 0))and (assert ( = in21 0))and (assert ( = in24 0))and (assert ( = in27 0)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0))  ( =  in12 0))  ( =  in15 0))  ( =  in18 0))  ( =  in21 0))  ( =  in24 0))  ( =  in27 0)))
(assert (not
(and )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(and(assert ( = in3 0))and (assert ( = in6 0))and (assert ( = in9 0))and (assert ( = in12 0))and (assert ( = in15 0))and (assert ( = in18 0))and (assert ( = in21 0))and (assert ( = in24 0))and (assert ( = in27 0)))
(assert (not
(and (and (and (and (and (and (and (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0))  ( =  in12 0))  ( =  in15 0))  ( =  in18 0))  ( =  in21 0))  ( =  in24 0))  ( =  in27 0)))
))
(check-sat)
(pop)
