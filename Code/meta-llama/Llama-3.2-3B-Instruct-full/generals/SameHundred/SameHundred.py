def generate_constraints(N: int) -> str:
    constraints = "(assert (and "
    for i in range(N):
        constraints += f"(< in{i} 100)"
    constraints += "))"

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)