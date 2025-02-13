def generate_constraints(N: int) -> str:

    if N == 1:
        return ""
    else:
        constraints = ""
        for i in range(N-1):
            constraints += f"(assert (< in{i} in{i+1}))\n"
        constraints += f"(assert (<= in{N-1} 100))"
        return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)