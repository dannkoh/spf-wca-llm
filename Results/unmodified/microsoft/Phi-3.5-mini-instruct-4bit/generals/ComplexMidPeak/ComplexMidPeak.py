def generate_constraints(N):
    constraints = []
    half = N // 2

    # First half: strictly increasing
    for i in range(half - 1):
        constraints.append(f"( <  in{i} in{i+1})")

    # Second half: strictly decreasing
    for i in range(half, N - 1):
        constraints.append(f"( >  in{i} in{i+1})")

    # Combine all constraints with 'and'
    combined_constraints = " ".join(constraints)
    return f"(assert (and {combined_constraints}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)