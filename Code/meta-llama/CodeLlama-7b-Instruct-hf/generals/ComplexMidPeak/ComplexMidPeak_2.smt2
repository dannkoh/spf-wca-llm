; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in1 Int)

; Original constraints (A):
(push)
(assert  ( <  in0 in1))
(pop)

; Generated constraints (B):
(push)
(assert (and (forall (x) (y) (>= x y)) (and (< x{i} x{i+1}) (> x{i+1} x{i}))))(assert (< in0 in1))(assert (= (len in) N))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert  ( <  in0 in1))
(assert (not
(and (and (forall (x) (y) (>= x y)) (and (< x{i} x{i+1}) (> x{i+1} x{i}))))(assert (< in0 in1))(assert (= (len in) N))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (forall (x) (y) (>= x y)) (and (< x{i} x{i+1}) (> x{i+1} x{i}))))(assert (< in0 in1))(assert (= (len in) N))
(assert (not
(and  ( <  in0 in1))
))
(check-sat)
(pop)
