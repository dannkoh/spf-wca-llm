; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)
(declare-const in1 Int)

; Original constraints (A):
(push)
(assert (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122)))
(pop)

; Generated constraints (B):
(push)
(assert (>= in1 97) (not (= in1 122))(assert (and (>= in2 97) (<= in2 122)) (not (= in2 122)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122)))
(assert (not
(and (>= in1 97) (not (= in1 122))(assert (and (>= in2 97) (<= in2 122)) (not (= in2 122)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (>= in1 97) (not (= in1 122))(assert (and (>= in2 97) (<= in2 122)) (not (= in2 122)))
(assert (not
(and (and (and (and  ( >=  in0 97)  ( <=  in0 122))  ( >=  in1 97))  ( <=  in1 122)))
))
(check-sat)
(pop)
