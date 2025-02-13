def generate_constraints(N: int) -> str:
    constraints = ""
    for i in range(N - 1):
        constraints += f"(assert (< in{i} in{i+1}))\n"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)