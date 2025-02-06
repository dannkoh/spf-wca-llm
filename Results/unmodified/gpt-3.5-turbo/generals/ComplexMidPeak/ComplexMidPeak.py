def generate_constraints(N):
    constraints = []
    for i in range(1, N):
        if i % 2 == 1:
            constraints.append(f"( < in{i-1} in{i})")
        else:
            constraints.append(f"( > in{i-1} in{i})")
    return "(assert (and " + " ".join(constraints) + "))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)