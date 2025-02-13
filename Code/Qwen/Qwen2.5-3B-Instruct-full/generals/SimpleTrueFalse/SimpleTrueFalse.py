def generate_constraints(N: int) -> str:
    constraints = ""
    for i in range(N-1):
        constraints += f"(assert (= in{i} 0))\n"
    constraints += f"(assert (= in{N-1} 1))\n"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)