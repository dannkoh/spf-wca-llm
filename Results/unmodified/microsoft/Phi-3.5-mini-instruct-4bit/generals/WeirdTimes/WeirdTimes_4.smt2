; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4))))
(pop)

; Generated constraints (B):
(push)
(assert ( ( =  in1 ( *  in0 2))   ( =  in2 ( *  in0 3))   ( =  in3 ( *  in0 4))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4))))
(assert (not
(and ( ( =  in1 ( *  in0 2))   ( =  in2 ( *  in0 3))   ( =  in3 ( *  in0 4))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert ( ( =  in1 ( *  in0 2))   ( =  in2 ( *  in0 3))   ( =  in3 ( *  in0 4))))
(assert (not
(and (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4))))
))
(check-sat)
(pop)
