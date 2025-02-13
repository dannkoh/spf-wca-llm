def generate_constraints(N: int) -> str:
    if N == 1:
        return "(assert (= in0 120))"
    else:
        constraints = "(and "
        for i in range(1, N):
            constraints += f"(= in{i} 120) "
        constraints += "(= in{N} 120))"
        return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)