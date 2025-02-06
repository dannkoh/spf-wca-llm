def generate_constraints(N):
    constraints = []
    for i in range(N):
        if i % 2 == 0:  # Even index
            constraints.append(f"(= in{i} 1)")
        else:  # Odd index
            constraints.append(f"(= in{i} 0)")

    # Combine all constraints using 'and'
    constraints_combined = "(and " + " ".join(constraints) + ")"
    return f"(assert {constraints_combined})"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)