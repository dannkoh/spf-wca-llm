def generate_constraints(N):
    if N < 3:
        return "(assert true)"  # No constraints needed for N < 3
    else:
        return "(assert (= in2 0))"  # Ensure a[2] is zero for N >= 3

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)