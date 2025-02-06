; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)

; Original constraints (A):
(push)
(assert (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3))))
(pop)

; Generated constraints (B):
(push)
(assert (and ( = in1 ( * in0 2)) ( = in2 ( * in0 3))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3))))
(assert (not
(and (and ( = in1 ( * in0 2)) ( = in2 ( * in0 3))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and ( = in1 ( * in0 2)) ( = in2 ( * in0 3))))
(assert (not
(and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3))))
))
(check-sat)
(pop)
