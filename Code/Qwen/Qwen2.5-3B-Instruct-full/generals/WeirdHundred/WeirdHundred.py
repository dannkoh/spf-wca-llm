def generate_constraints(N: int) -> str:
    if N == 1:
        return ""
    else:
        constraints = "(assert (and (>= in0 0))\n"
        for i in range(1, N):
            constraints += f"(assert (<= in{i} 100))\n"
        constraints += "(assert (>= in{N-1} 100))\n"
        return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)