; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)

; Original constraints (A):
(push)
(assert  ( <  in0 in2))
(pop)

; Generated constraints (B):
(push)
(assert (< a b))
(assert (< b c))
(assert (< c a))
(assert (< c a))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert  ( <  in0 in2))
(assert (not
(and (< a b) (< b c) (< c a) (< c a))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (< a b))
(assert (< b c))
(assert (< c a))
(assert (< c a))
(assert (not
(and  ( <  in0 in2))
))
(check-sat)
(pop)
