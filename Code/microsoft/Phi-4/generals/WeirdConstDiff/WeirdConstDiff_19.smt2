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
(declare-const in17 Int)
(declare-const in16 Int)
(declare-const in18 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  ( -  in2 in1) ( -  in1 in0))  ( =  ( -  in3 in2) ( -  in2 in1)))  ( =  ( -  in4 in3) ( -  in3 in2)))  ( =  ( -  in5 in4) ( -  in4 in3)))  ( =  ( -  in6 in5) ( -  in5 in4)))  ( =  ( -  in7 in6) ( -  in6 in5)))  ( =  ( -  in8 in7) ( -  in7 in6)))  ( =  ( -  in9 in8) ( -  in8 in7)))  ( =  ( -  in10 in9) ( -  in9 in8)))  ( =  ( -  in11 in10) ( -  in10 in9)))  ( =  ( -  in12 in11) ( -  in11 in10)))  ( =  ( -  in13 in12) ( -  in12 in11)))  ( =  ( -  in14 in13) ( -  in13 in12)))  ( =  ( -  in15 in14) ( -  in14 in13)))  ( =  ( -  in16 in15) ( -  in15 in14)))  ( =  ( -  in17 in16) ( -  in16 in15)))  ( =  ( -  in18 in17) ( -  in17 in16))))
(pop)

; Generated constraints (B):
(push)
( a s s e r t   ( a n d   ( =   ( -   i n 2   i n 1 )   ( -   i n 1   i n 0 ) )   ( =   ( -   i n 3   i n 2 )   ( -   i n 2   i n 1 ) )   ( =   ( -   i n 4   i n 3 )   ( -   i n 3   i n 2 ) )   ( =   ( -   i n 5   i n 4 )   ( -   i n 4   i n 3 ) )   ( =   ( -   i n 6   i n 5 )   ( -   i n 5   i n 4 ) )   ( =   ( -   i n 7   i n 6 )   ( -   i n 6   i n 5 ) )   ( =   ( -   i n 8   i n 7 )   ( -   i n 7   i n 6 ) )   ( =   ( -   i n 9   i n 8 )   ( -   i n 8   i n 7 ) )   ( =   ( -   i n 1 0   i n 9 )   ( -   i n 9   i n 8 ) )   ( =   ( -   i n 1 1   i n 1 0 )   ( -   i n 1 0   i n 9 ) )   ( =   ( -   i n 1 2   i n 1 1 )   ( -   i n 1 1   i n 1 0 ) )   ( =   ( -   i n 1 3   i n 1 2 )   ( -   i n 1 2   i n 1 1 ) )   ( =   ( -   i n 1 4   i n 1 3 )   ( -   i n 1 3   i n 1 2 ) )   ( =   ( -   i n 1 5   i n 1 4 )   ( -   i n 1 4   i n 1 3 ) )   ( =   ( -   i n 1 6   i n 1 5 )   ( -   i n 1 5   i n 1 4 ) )   ( =   ( -   i n 1 7   i n 1 6 )   ( -   i n 1 6   i n 1 5 ) )   ( =   ( -   i n 1 8   i n 1 7 )   ( -   i n 1 7   i n 1 6 ) ) ) )
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  ( -  in2 in1) ( -  in1 in0))  ( =  ( -  in3 in2) ( -  in2 in1)))  ( =  ( -  in4 in3) ( -  in3 in2)))  ( =  ( -  in5 in4) ( -  in4 in3)))  ( =  ( -  in6 in5) ( -  in5 in4)))  ( =  ( -  in7 in6) ( -  in6 in5)))  ( =  ( -  in8 in7) ( -  in7 in6)))  ( =  ( -  in9 in8) ( -  in8 in7)))  ( =  ( -  in10 in9) ( -  in9 in8)))  ( =  ( -  in11 in10) ( -  in10 in9)))  ( =  ( -  in12 in11) ( -  in11 in10)))  ( =  ( -  in13 in12) ( -  in12 in11)))  ( =  ( -  in14 in13) ( -  in13 in12)))  ( =  ( -  in15 in14) ( -  in14 in13)))  ( =  ( -  in16 in15) ( -  in15 in14)))  ( =  ( -  in17 in16) ( -  in16 in15)))  ( =  ( -  in18 in17) ( -  in17 in16))))
(assert (not
(and )
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
( a s s e r t   ( a n d   ( =   ( -   i n 2   i n 1 )   ( -   i n 1   i n 0 ) )   ( =   ( -   i n 3   i n 2 )   ( -   i n 2   i n 1 ) )   ( =   ( -   i n 4   i n 3 )   ( -   i n 3   i n 2 ) )   ( =   ( -   i n 5   i n 4 )   ( -   i n 4   i n 3 ) )   ( =   ( -   i n 6   i n 5 )   ( -   i n 5   i n 4 ) )   ( =   ( -   i n 7   i n 6 )   ( -   i n 6   i n 5 ) )   ( =   ( -   i n 8   i n 7 )   ( -   i n 7   i n 6 ) )   ( =   ( -   i n 9   i n 8 )   ( -   i n 8   i n 7 ) )   ( =   ( -   i n 1 0   i n 9 )   ( -   i n 9   i n 8 ) )   ( =   ( -   i n 1 1   i n 1 0 )   ( -   i n 1 0   i n 9 ) )   ( =   ( -   i n 1 2   i n 1 1 )   ( -   i n 1 1   i n 1 0 ) )   ( =   ( -   i n 1 3   i n 1 2 )   ( -   i n 1 2   i n 1 1 ) )   ( =   ( -   i n 1 4   i n 1 3 )   ( -   i n 1 3   i n 1 2 ) )   ( =   ( -   i n 1 5   i n 1 4 )   ( -   i n 1 4   i n 1 3 ) )   ( =   ( -   i n 1 6   i n 1 5 )   ( -   i n 1 5   i n 1 4 ) )   ( =   ( -   i n 1 7   i n 1 6 )   ( -   i n 1 6   i n 1 5 ) )   ( =   ( -   i n 1 8   i n 1 7 )   ( -   i n 1 7   i n 1 6 ) ) ) )
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  ( -  in2 in1) ( -  in1 in0))  ( =  ( -  in3 in2) ( -  in2 in1)))  ( =  ( -  in4 in3) ( -  in3 in2)))  ( =  ( -  in5 in4) ( -  in4 in3)))  ( =  ( -  in6 in5) ( -  in5 in4)))  ( =  ( -  in7 in6) ( -  in6 in5)))  ( =  ( -  in8 in7) ( -  in7 in6)))  ( =  ( -  in9 in8) ( -  in8 in7)))  ( =  ( -  in10 in9) ( -  in9 in8)))  ( =  ( -  in11 in10) ( -  in10 in9)))  ( =  ( -  in12 in11) ( -  in11 in10)))  ( =  ( -  in13 in12) ( -  in12 in11)))  ( =  ( -  in14 in13) ( -  in13 in12)))  ( =  ( -  in15 in14) ( -  in14 in13)))  ( =  ( -  in16 in15) ( -  in15 in14)))  ( =  ( -  in17 in16) ( -  in16 in15)))  ( =  ( -  in18 in17) ( -  in17 in16))))
))
(check-sat)
(pop)
