; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in7 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and  ( <  in0 in7)  ( <  in1 in6))  ( <  in2 in5))  ( <  in3 in4)))
(pop)

; Generated constraints (B):
(push)
(assert (< a b))
(assert (< b c))
(assert (< c d))
(assert (< d e))
(assert (< e f))
(assert (< f g))
(assert (< g h))
(assert (< h a))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and  ( <  in0 in7)  ( <  in1 in6))  ( <  in2 in5))  ( <  in3 in4)))
(assert (not
(and (< a b) (< b c) (< c d) (< d e) (< e f) (< f g) (< g h) (< h a))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (< a b))
(assert (< b c))
(assert (< c d))
(assert (< d e))
(assert (< e f))
(assert (< f g))
(assert (< g h))
(assert (< h a))
(assert (not
(and (and (and (and  ( <  in0 in7)  ( <  in1 in6))  ( <  in2 in5))  ( <  in3 in4)))
))
(check-sat)
(pop)
