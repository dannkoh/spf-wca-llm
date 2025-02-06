def generate_constraints(N):
    constraints = []

    for i in range(N // 2):
        constraints.append(f"( < in{i} in{N-i-1})")

    if len(constraints) == 0:
        return "None"
    elif len(constraints) == 1:
        return "(assert " + constraints[0] + ")"
    else:
        return "(assert (and " + " ".join(constraints) + "))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)