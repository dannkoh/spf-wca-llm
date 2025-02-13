def generate_constraints(N: int) -> str:
    constraints = ""
    for i in range(N):
        constraints += f"(assert (and (>= in{i} 97) (<= in{i} 122)))\n"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)