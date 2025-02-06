def generate_constraints(N):
    if N >= 3:
        return f"(assert (= in2 0))"
    else:
        return "(assert true)"  # No constraints needed for N < 3

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)