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
(declare-const in20 Int)
(declare-const in7 Int)
(declare-const in11 Int)
(declare-const in10 Int)
(declare-const in9 Int)
(declare-const in21 Int)
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
(assert (and (and (and (and (and (and (and (and (and (and  ( <  in0 in21)  ( <  in1 in20))  ( <  in2 in19))  ( <  in3 in18))  ( <  in4 in17))  ( <  in5 in16))  ( <  in6 in15))  ( <  in7 in14))  ( <  in8 in13))  ( <  in9 in12))  ( <  in10 in11)))
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
(assert (< h i))
(assert (< i j))
(assert (< j k))
(assert (< k l))
(assert (< l m))
(assert (< m n))
(assert (< n o))
(assert (< o p))
(assert (< p q))
(assert (< q r))
(assert (< r s))
(assert (< s t))
(assert (< t u))
(assert (< u v))
(assert (< v a))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and (and (and (and (and (and (and (and  ( <  in0 in21)  ( <  in1 in20))  ( <  in2 in19))  ( <  in3 in18))  ( <  in4 in17))  ( <  in5 in16))  ( <  in6 in15))  ( <  in7 in14))  ( <  in8 in13))  ( <  in9 in12))  ( <  in10 in11)))
(assert (not
(and (< a b) (< b c) (< c d) (< d e) (< e f) (< f g) (< g h) (< h i) (< i j) (< j k) (< k l) (< l m) (< m n) (< n o) (< o p) (< p q) (< q r) (< r s) (< s t) (< t u) (< u v) (< v a))
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
(assert (< h i))
(assert (< i j))
(assert (< j k))
(assert (< k l))
(assert (< l m))
(assert (< m n))
(assert (< n o))
(assert (< o p))
(assert (< p q))
(assert (< q r))
(assert (< r s))
(assert (< s t))
(assert (< t u))
(assert (< u v))
(assert (< v a))
(assert (not
(and (and (and (and (and (and (and (and (and (and (and  ( <  in0 in21)  ( <  in1 in20))  ( <  in2 in19))  ( <  in3 in18))  ( <  in4 in17))  ( <  in5 in16))  ( <  in6 in15))  ( <  in7 in14))  ( <  in8 in13))  ( <  in9 in12))  ( <  in10 in11)))
))
(check-sat)
(pop)
