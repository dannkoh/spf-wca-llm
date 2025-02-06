def generate_constraints(N: int) -> str:
    if N < 3:
        return "(assert true)"  # No constraints needed for N < 3

    constraints = []
    for i in range(2, N):
        constraint = f"(= (- in{i} in{i-1}) (- in{i-1} in{i-2}))"
        constraints.append(constraint)

    # Combine all constraints with 'and'
    combined_constraints = " ".join(f"(assert (and {' '.join(constraints)}))")
    return combined_constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)