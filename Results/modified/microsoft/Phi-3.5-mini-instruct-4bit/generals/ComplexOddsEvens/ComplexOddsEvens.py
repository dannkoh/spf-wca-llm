def generate_constraints(N):
    constraints = []
    for i in range(0, N - 1, 2):
        constraints.append(f"(< in{i} in{i+1})")
    constraints_str = " ".join(constraints)
    return f"(assert (and {constraints_str}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)