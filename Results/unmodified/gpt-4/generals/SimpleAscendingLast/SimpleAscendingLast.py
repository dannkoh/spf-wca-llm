def generate_constraints(N):
    constraints = []

    for i in range(N-1):
        constraints.append(f"( < in{i} in{i+1})")

    constraints.append(f"( < in{N-1} in0)")

    smt_constraints = " ".join(constraints)

    return f"(assert (and {smt_constraints}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)