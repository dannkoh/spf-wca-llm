def generate_constraints(N):
    if N <= 2:
        return ""

    constraints = []
    # Generate constraints to ensure arithmetic progression
    for i in range(2, N):
        constraints.append(f"(= (- in{i} in{i-1}) (- in{i-1} in{i-2}))")

    # Combine the constraints using 'and'
    combined_constraints = " ".join(constraints)
    return f"(assert (and {combined_constraints}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)