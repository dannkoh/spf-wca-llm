def generate_constraints(N):
    constraints = "(assert (and "
    for i in range(N):
        constraints += f"(not (= in{i} 95)) (= in{i} 45) "
    constraints = constraints.strip()  # Remove trailing space
    constraints = constraints.rstrip()  # Remove trailing space and newline
    constraints += ")"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)