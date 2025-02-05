def generate_constraints(N):
    constraints = "(assert (and "
    for i in range(N):
        constraints += f"(and (>= in{i} 97) (<= in{i} 122)) "
    constraints += "))"
    return constraints.strip()

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)