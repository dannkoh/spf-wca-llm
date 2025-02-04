def generate_constraints(N):
    constraints = "(assert (and "
    for i in range(N // 2):
        constraints += f"(<= in{i} in{N-1-i}) "
    constraints = constraints.strip() + "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)