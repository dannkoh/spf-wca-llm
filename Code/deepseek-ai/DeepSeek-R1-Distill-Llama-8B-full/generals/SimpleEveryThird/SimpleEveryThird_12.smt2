; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in9 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0)))
(pop)

; Generated constraints (B):
(push)
(and(assert ( = in3 0))and (assert ( = in6 0))and (assert ( = in9 0))and (assert ( = in12 0)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0)))
(assert (not
(and )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(and(assert ( = in3 0))and (assert ( = in6 0))and (assert ( = in9 0))and (assert ( = in12 0)))
(assert (not
(and (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0)))
))
(check-sat)
(pop)
