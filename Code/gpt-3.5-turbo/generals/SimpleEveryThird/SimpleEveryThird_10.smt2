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
(assert (= in2 0))
(assert (= in5 0))
(assert (= in8 0))
(assert (= in5 0))
(assert (= in8 0))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0)))
(assert (not
(and (= in2 0) (= in5 0) (= in8 0) (= in5 0) (= in8 0))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= in2 0))
(assert (= in5 0))
(assert (= in8 0))
(assert (= in5 0))
(assert (= in8 0))
(assert (not
(and (and (and  ( =  in3 0)  ( =  in6 0))  ( =  in9 0)))
))
(check-sat)
(pop)
