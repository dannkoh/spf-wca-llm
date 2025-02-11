; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in11 Int)
(declare-const in10 Int)
(declare-const in9 Int)
(declare-const in13 Int)
(declare-const in12 Int)
(declare-const in15 Int)
(declare-const in14 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4)))  ( =  in4 ( *  in0 5)))  ( =  in5 ( *  in0 6)))  ( =  in6 ( *  in0 7)))  ( =  in7 ( *  in0 8)))  ( =  in8 ( *  in0 9)))  ( =  in9 ( *  in0 10)))  ( =  in10 ( *  in0 11)))  ( =  in11 ( *  in0 12)))  ( =  in12 ( *  in0 13)))  ( =  in13 ( *  in0 14)))  ( =  in14 ( *  in0 15)))  ( =  in15 ( *  in0 16))))
(pop)

; Generated constraints (B):
(push)
(assert (( = in1 ( * in0 2 )) and ( = in2 ( * in0 3 )) and ( = in3 ( * in0 4 )) and ( = in4 ( * in0 5 )) and ( = in5 ( * in0 6 )) and ( = in6 ( * in0 7 )) and ( = in7 ( * in0 8 )) and ( = in8 ( * in0 9 )) and ( = in9 ( * in0 10 )) and ( = in10 ( * in0 11 )) and ( = in11 ( * in0 12 )) and ( = in12 ( * in0 13 )) and ( = in13 ( * in0 14 )) and ( = in14 ( * in0 15 )) and ( = in15 ( * in0 16 ))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4)))  ( =  in4 ( *  in0 5)))  ( =  in5 ( *  in0 6)))  ( =  in6 ( *  in0 7)))  ( =  in7 ( *  in0 8)))  ( =  in8 ( *  in0 9)))  ( =  in9 ( *  in0 10)))  ( =  in10 ( *  in0 11)))  ( =  in11 ( *  in0 12)))  ( =  in12 ( *  in0 13)))  ( =  in13 ( *  in0 14)))  ( =  in14 ( *  in0 15)))  ( =  in15 ( *  in0 16))))
(assert (not
(and (( = in1 ( * in0 2 )) and ( = in2 ( * in0 3 )) and ( = in3 ( * in0 4 )) and ( = in4 ( * in0 5 )) and ( = in5 ( * in0 6 )) and ( = in6 ( * in0 7 )) and ( = in7 ( * in0 8 )) and ( = in8 ( * in0 9 )) and ( = in9 ( * in0 10 )) and ( = in10 ( * in0 11 )) and ( = in11 ( * in0 12 )) and ( = in12 ( * in0 13 )) and ( = in13 ( * in0 14 )) and ( = in14 ( * in0 15 )) and ( = in15 ( * in0 16 ))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (( = in1 ( * in0 2 )) and ( = in2 ( * in0 3 )) and ( = in3 ( * in0 4 )) and ( = in4 ( * in0 5 )) and ( = in5 ( * in0 6 )) and ( = in6 ( * in0 7 )) and ( = in7 ( * in0 8 )) and ( = in8 ( * in0 9 )) and ( = in9 ( * in0 10 )) and ( = in10 ( * in0 11 )) and ( = in11 ( * in0 12 )) and ( = in12 ( * in0 13 )) and ( = in13 ( * in0 14 )) and ( = in14 ( * in0 15 )) and ( = in15 ( * in0 16 ))))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4)))  ( =  in4 ( *  in0 5)))  ( =  in5 ( *  in0 6)))  ( =  in6 ( *  in0 7)))  ( =  in7 ( *  in0 8)))  ( =  in8 ( *  in0 9)))  ( =  in9 ( *  in0 10)))  ( =  in10 ( *  in0 11)))  ( =  in11 ( *  in0 12)))  ( =  in12 ( *  in0 13)))  ( =  in13 ( *  in0 14)))  ( =  in14 ( *  in0 15)))  ( =  in15 ( *  in0 16))))
))
(check-sat)
(pop)
