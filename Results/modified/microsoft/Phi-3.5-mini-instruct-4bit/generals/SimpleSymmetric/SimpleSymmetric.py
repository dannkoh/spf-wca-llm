def generate_constraints(N):
    constraints = []
    for i in range(N):
        for j in range(i + 1, N):
            constraints.append(f"( =  in{i}x{j} in{j}x{i})")
    return "(assert (and " + " ".join(constraints) + "))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)