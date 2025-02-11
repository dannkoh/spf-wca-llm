def generate_constraints(N: int) -> str:
    if N < 3:
        return ""
    constraints = "(assert (and "
    for i in range(N):
        constraints += f"(not (= in{i} 95)) (= in{i} 45) "
    constraints = constraints.strip() + ")"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)