def generate_constraints(N: int) -> str:
    constraints = ""
    constraints += "(assert (= in0 1))\n"
    for i in range(1, N):
        constraints += f"(assert (= in{i} 1))\n"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)