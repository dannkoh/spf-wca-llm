; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in2 Int)
(declare-const in1 Int)
(declare-const in4 Int)
(declare-const in3 Int)
(declare-const in6 Int)
(declare-const in5 Int)
(declare-const in20 Int)
(declare-const in8 Int)
(declare-const in7 Int)
(declare-const in22 Int)
(declare-const in11 Int)
(declare-const in21 Int)
(declare-const in10 Int)
(declare-const in9 Int)
(declare-const in13 Int)
(declare-const in12 Int)
(declare-const in15 Int)
(declare-const in14 Int)
(declare-const in17 Int)
(declare-const in16 Int)
(declare-const in19 Int)
(declare-const in18 Int)

; Original constraints (A):
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4)))  ( =  in4 ( *  in0 5)))  ( =  in5 ( *  in0 6)))  ( =  in6 ( *  in0 7)))  ( =  in7 ( *  in0 8)))  ( =  in8 ( *  in0 9)))  ( =  in9 ( *  in0 10)))  ( =  in10 ( *  in0 11)))  ( =  in11 ( *  in0 12)))  ( =  in12 ( *  in0 13)))  ( =  in13 ( *  in0 14)))  ( =  in14 ( *  in0 15)))  ( =  in15 ( *  in0 16)))  ( =  in16 ( *  in0 17)))  ( =  in17 ( *  in0 18)))  ( =  in18 ( *  in0 19)))  ( =  in19 ( *  in0 20)))  ( =  in20 ( *  in0 21)))  ( =  in21 ( *  in0 22)))  ( =  in22 ( *  in0 23))))
(pop)

; Generated constraints (B):
(push)
(assert (= in1 (* in0 2))and (assert (= in2 (* in0 3))and (assert (= in3 (* in0 4))and (assert (= in4 (* in0 5))and (assert (= in5 (* in0 6))and (assert (= in6 (* in0 7))and (assert (= in7 (* in0 8))and (assert (= in8 (* in0 9))and (assert (= in9 (* in0 10))and (assert (= in10 (* in0 11))and (assert (= in11 (* in0 12))and (assert (= in12 (* in0 13))and (assert (= in13 (* in0 14))and (assert (= in14 (* in0 15))and (assert (= in15 (* in0 16))and (assert (= in16 (* in0 17))and (assert (= in17 (* in0 18))and (assert (= in18 (* in0 19))and (assert (= in19 (* in0 20))and (assert (= in20 (* in0 21))and (assert (= in21 (* in0 22))and (assert (= in22 (* in0 23))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4)))  ( =  in4 ( *  in0 5)))  ( =  in5 ( *  in0 6)))  ( =  in6 ( *  in0 7)))  ( =  in7 ( *  in0 8)))  ( =  in8 ( *  in0 9)))  ( =  in9 ( *  in0 10)))  ( =  in10 ( *  in0 11)))  ( =  in11 ( *  in0 12)))  ( =  in12 ( *  in0 13)))  ( =  in13 ( *  in0 14)))  ( =  in14 ( *  in0 15)))  ( =  in15 ( *  in0 16)))  ( =  in16 ( *  in0 17)))  ( =  in17 ( *  in0 18)))  ( =  in18 ( *  in0 19)))  ( =  in19 ( *  in0 20)))  ( =  in20 ( *  in0 21)))  ( =  in21 ( *  in0 22)))  ( =  in22 ( *  in0 23))))
(assert (not
(and (= in1 (* in0 2))and (assert (= in2 (* in0 3))and (assert (= in3 (* in0 4))and (assert (= in4 (* in0 5))and (assert (= in5 (* in0 6))and (assert (= in6 (* in0 7))and (assert (= in7 (* in0 8))and (assert (= in8 (* in0 9))and (assert (= in9 (* in0 10))and (assert (= in10 (* in0 11))and (assert (= in11 (* in0 12))and (assert (= in12 (* in0 13))and (assert (= in13 (* in0 14))and (assert (= in14 (* in0 15))and (assert (= in15 (* in0 16))and (assert (= in16 (* in0 17))and (assert (= in17 (* in0 18))and (assert (= in18 (* in0 19))and (assert (= in19 (* in0 20))and (assert (= in20 (* in0 21))and (assert (= in21 (* in0 22))and (assert (= in22 (* in0 23))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (= in1 (* in0 2))and (assert (= in2 (* in0 3))and (assert (= in3 (* in0 4))and (assert (= in4 (* in0 5))and (assert (= in5 (* in0 6))and (assert (= in6 (* in0 7))and (assert (= in7 (* in0 8))and (assert (= in8 (* in0 9))and (assert (= in9 (* in0 10))and (assert (= in10 (* in0 11))and (assert (= in11 (* in0 12))and (assert (= in12 (* in0 13))and (assert (= in13 (* in0 14))and (assert (= in14 (* in0 15))and (assert (= in15 (* in0 16))and (assert (= in16 (* in0 17))and (assert (= in17 (* in0 18))and (assert (= in18 (* in0 19))and (assert (= in19 (* in0 20))and (assert (= in20 (* in0 21))and (assert (= in21 (* in0 22))and (assert (= in22 (* in0 23))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( =  in1 ( *  in0 2))  ( =  in2 ( *  in0 3)))  ( =  in3 ( *  in0 4)))  ( =  in4 ( *  in0 5)))  ( =  in5 ( *  in0 6)))  ( =  in6 ( *  in0 7)))  ( =  in7 ( *  in0 8)))  ( =  in8 ( *  in0 9)))  ( =  in9 ( *  in0 10)))  ( =  in10 ( *  in0 11)))  ( =  in11 ( *  in0 12)))  ( =  in12 ( *  in0 13)))  ( =  in13 ( *  in0 14)))  ( =  in14 ( *  in0 15)))  ( =  in15 ( *  in0 16)))  ( =  in16 ( *  in0 17)))  ( =  in17 ( *  in0 18)))  ( =  in18 ( *  in0 19)))  ( =  in19 ( *  in0 20)))  ( =  in20 ( *  in0 21)))  ( =  in21 ( *  in0 22)))  ( =  in22 ( *  in0 23))))
))
(check-sat)
(pop)
