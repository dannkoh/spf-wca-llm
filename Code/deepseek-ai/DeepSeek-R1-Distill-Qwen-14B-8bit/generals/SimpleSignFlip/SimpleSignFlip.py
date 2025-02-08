def generate_constraints(N: int) -> str:
    constraints = []
    for i in range(N - 1):
        if i % 2 == 0:
            constraints.append(f"(= in{i} in{i+1})")
        else:
            constraints.append(f"(< in{i} in{i+1})")
    combined = " (and " + " ".join(constraints) + ")"
    return f"(assert{combined})"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)