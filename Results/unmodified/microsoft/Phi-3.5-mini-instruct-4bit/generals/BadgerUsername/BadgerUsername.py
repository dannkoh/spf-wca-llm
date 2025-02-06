def generate_constraints(N):
    constraints = "(assert (and "
    for i in range(N):
        constraints += f"(and (not (= in{i} 95)) (= in{i} 45)) "
    constraints = constraints.strip() + "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)