def generate_constraints(N):
    constraints = []
    for i in range(N):
        if i % 2 == 0:
            constraints.append(f"(= in{i} 1)")
        else:
            constraints.append(f"(= in{i} 0)")
        if i > 0:
            constraints.append(f"(= in{i} (ite (= in{i-1} 1) 0 1))")
    return "(assert (and " + " ".join(constraints) + "))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)