; Combined SMT for checking equivalence
; Original constants:
(declare-const in0 Int)

; Original constraints (A):
(push)
(assert (and  ( >=  in0 97)  ( <=  in0 122)))
(pop)

; Generated constraints (B):
(push)
(assert (and (>= in0 97) (<= in0 122)))
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
(assert (and  ( >=  in0 97)  ( <=  in0 122)))
(assert (not
(and (and (>= in0 97) (<= in0 122)))
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
(assert (and (>= in0 97) (<= in0 122)))
(assert (not
(and (and  ( >=  in0 97)  ( <=  in0 122)))
))
(check-sat)
(pop)
