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
(declare-const in9 Int)
(declare-const in10 Int)
(declare-const in13 Int)
(declare-const in12 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and  ( <  in0 in13)  ( <  in1 in12))  ( <  in2 in11))  ( <  in3 in10))  ( <  in4 in9))  ( <  in5 in8))  ( <  in6 in7)))
(pop)

; Generated constraints (B):
(push)
(assert (assert ( < in0 in13))and (assert ( < in1 in12))and (assert ( < in2 in11))and (assert ( < in3 in10))and (assert ( < in4 in9))and (assert ( < in5 in8))and (assert ( < in6 in7)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and  ( <  in0 in13)  ( <  in1 in12))  ( <  in2 in11))  ( <  in3 in10))  ( <  in4 in9))  ( <  in5 in8))  ( <  in6 in7)))
(assert (not
(and (assert ( < in0 in13))and (assert ( < in1 in12))and (assert ( < in2 in11))and (assert ( < in3 in10))and (assert ( < in4 in9))and (assert ( < in5 in8))and (assert ( < in6 in7)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (assert ( < in0 in13))and (assert ( < in1 in12))and (assert ( < in2 in11))and (assert ( < in3 in10))and (assert ( < in4 in9))and (assert ( < in5 in8))and (assert ( < in6 in7)))
(assert (not
(and (and (and (and (and (and (and  ( <  in0 in13)  ( <  in1 in12))  ( <  in2 in11))  ( <  in3 in10))  ( <  in4 in9))  ( <  in5 in8))  ( <  in6 in7)))
))
(check-sat)
(pop)
