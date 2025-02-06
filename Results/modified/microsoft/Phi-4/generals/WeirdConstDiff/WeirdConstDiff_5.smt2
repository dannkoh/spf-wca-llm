; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and  ( =  ( -  in2 in1) ( -  in1 in0))  ( =  ( -  in3 in2) ( -  in2 in1)))  ( =  ( -  in4 in3) ( -  in3 in2))))
(pop)

; Generated constraints (B):
(push)
( a s s e r t   ( a n d   ( =   ( -   i n 2   i n 1 )   ( -   i n 1   i n 0 ) )   ( =   ( -   i n 3   i n 2 )   ( -   i n 2   i n 1 ) )   ( =   ( -   i n 4   i n 3 )   ( -   i n 3   i n 2 ) ) ) )
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and  ( =  ( -  in2 in1) ( -  in1 in0))  ( =  ( -  in3 in2) ( -  in2 in1)))  ( =  ( -  in4 in3) ( -  in3 in2))))
(assert (not
(and )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
( a s s e r t   ( a n d   ( =   ( -   i n 2   i n 1 )   ( -   i n 1   i n 0 ) )   ( =   ( -   i n 3   i n 2 )   ( -   i n 2   i n 1 ) )   ( =   ( -   i n 4   i n 3 )   ( -   i n 3   i n 2 ) ) ) )
(assert (not
(and (and (and  ( =  ( -  in2 in1) ( -  in1 in0))  ( =  ( -  in3 in2) ( -  in2 in1)))  ( =  ( -  in4 in3) ( -  in3 in2))))
))
(check-sat)
(pop)
