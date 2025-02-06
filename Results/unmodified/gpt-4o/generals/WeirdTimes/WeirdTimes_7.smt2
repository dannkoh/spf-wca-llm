; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4)))  ( =  in4 ( *  in0 5)))  ( =  in5 ( *  in0 6)))  ( =  in6 ( *  in0 7))))
(pop)

; Generated constraints (B):
(push)
(assert (and (and (and (and (and ( = in1 ( * in0 2)) ( = in2 ( * in0 3)) ( = in3 ( * in0 4)) ( = in4 ( * in0 5)) ( = in5 ( * in0 6)) ( = in6 ( * in0 7))))))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4)))  ( =  in4 ( *  in0 5)))  ( =  in5 ( *  in0 6)))  ( =  in6 ( *  in0 7))))
(assert (not
(and (and (and (and (and (and ( = in1 ( * in0 2)) ( = in2 ( * in0 3)) ( = in3 ( * in0 4)) ( = in4 ( * in0 5)) ( = in5 ( * in0 6)) ( = in6 ( * in0 7))))))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (and (and (and (and ( = in1 ( * in0 2)) ( = in2 ( * in0 3)) ( = in3 ( * in0 4)) ( = in4 ( * in0 5)) ( = in5 ( * in0 6)) ( = in6 ( * in0 7))))))))
(assert (not
(and (and (and (and (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4)))  ( =  in4 ( *  in0 5)))  ( =  in5 ( *  in0 6)))  ( =  in6 ( *  in0 7))))
))
(check-sat)
(pop)
