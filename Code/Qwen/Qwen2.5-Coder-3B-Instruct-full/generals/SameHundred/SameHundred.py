def generate_constraints(N: int) -> str:
    constraints = ""
    for n in range(N):
        constraints += f"(assert (<= {n} 100))\n"
        constraints += f"(assert (>= {n} 0))\n"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)