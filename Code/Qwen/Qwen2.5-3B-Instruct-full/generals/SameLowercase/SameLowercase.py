def generate_constraints(N: int) -> str:
    constraints = ""
    for i in range(1, N+1):
        constraints += f"(assert (and (>= in{i} 97))\n"
    for i in range(1, N-1):
        constraints += f"(assert (<= in{i} in{i+1}))\n"
    constraints += f"(assert (<= in{i} 122))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)