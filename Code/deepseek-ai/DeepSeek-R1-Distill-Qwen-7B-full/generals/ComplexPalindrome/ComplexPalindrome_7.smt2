; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)

; Original constraints (A):
(push)
(assert (and (and  ( <  in0 in6)  ( <  in1 in5))  ( <  in2 in4)))
(pop)

; Generated constraints (B):
(push)
(assert (assert ( < in0 in6))and (assert ( < in1 in5))and (assert ( < in2 in4)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and  ( <  in0 in6)  ( <  in1 in5))  ( <  in2 in4)))
(assert (not
(and (assert ( < in0 in6))and (assert ( < in1 in5))and (assert ( < in2 in4)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (assert ( < in0 in6))and (assert ( < in1 in5))and (assert ( < in2 in4)))
(assert (not
(and (and (and  ( <  in0 in6)  ( <  in1 in5))  ( <  in2 in4)))
))
(check-sat)
(pop)
