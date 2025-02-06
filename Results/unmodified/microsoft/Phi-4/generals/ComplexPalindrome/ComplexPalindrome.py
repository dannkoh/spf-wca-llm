def generate_constraints(N: int) -> str:
    constraints = "(assert (and "
    for i in range(N // 2):
        constraints += f"(< in{i} in{N - i - 1}) "
    constraints = constraints.strip() + "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)