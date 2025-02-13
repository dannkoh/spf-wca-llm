; Combined SMT for checking equivalence
; Original constants:
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in11 Int)
(declare-const in10 Int)
(declare-const in9 Int)
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4)))  ( =  in4 ( *  in0 5)))  ( =  in5 ( *  in0 6)))  ( =  in6 ( *  in0 7)))  ( =  in7 ( *  in0 8)))  ( =  in8 ( *  in0 9)))  ( =  in9 ( *  in0 10)))  ( =  in10 ( *  in0 11)))  ( =  in11 ( *  in0 12))))
(pop)

; Generated constraints (B):
(push)
(assert (and (assert (= in1 ( * in0 1))) (assert (= in2 ( * in0 2))) (assert (= in3 ( * in0 3))) (assert (= in4 ( * in0 4))) (assert (= in5 ( * in0 5))) (assert (= in6 ( * in0 6))) (assert (= in7 ( * in0 7))) (assert (= in8 ( * in0 8))) (assert (= in9 ( * in0 9))) (assert (= in10 ( * in0 10))) (assert (= in11 ( * in0 11))) (assert (= in12 ( * in0 12)))))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4)))  ( =  in4 ( *  in0 5)))  ( =  in5 ( *  in0 6)))  ( =  in6 ( *  in0 7)))  ( =  in7 ( *  in0 8)))  ( =  in8 ( *  in0 9)))  ( =  in9 ( *  in0 10)))  ( =  in10 ( *  in0 11)))  ( =  in11 ( *  in0 12))))
(assert (not
(and (and (assert (= in1 ( * in0 1))) (assert (= in2 ( * in0 2))) (assert (= in3 ( * in0 3))) (assert (= in4 ( * in0 4))) (assert (= in5 ( * in0 5))) (assert (= in6 ( * in0 6))) (assert (= in7 ( * in0 7))) (assert (= in8 ( * in0 8))) (assert (= in9 ( * in0 9))) (assert (= in10 ( * in0 10))) (assert (= in11 ( * in0 11))) (assert (= in12 ( * in0 12)))))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (assert (= in1 ( * in0 1))) (assert (= in2 ( * in0 2))) (assert (= in3 ( * in0 3))) (assert (= in4 ( * in0 4))) (assert (= in5 ( * in0 5))) (assert (= in6 ( * in0 6))) (assert (= in7 ( * in0 7))) (assert (= in8 ( * in0 8))) (assert (= in9 ( * in0 9))) (assert (= in10 ( * in0 10))) (assert (= in11 ( * in0 11))) (assert (= in12 ( * in0 12)))))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4)))  ( =  in4 ( *  in0 5)))  ( =  in5 ( *  in0 6)))  ( =  in6 ( *  in0 7)))  ( =  in7 ( *  in0 8)))  ( =  in8 ( *  in0 9)))  ( =  in9 ( *  in0 10)))  ( =  in10 ( *  in0 11)))  ( =  in11 ( *  in0 12))))
))
(check-sat)
(pop)
