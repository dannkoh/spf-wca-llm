def generate_constraints(N):
    if N == 1 or N == 2:
        return ""  # No constraints needed for N=1 or N=2

    constraints = []
    for i in range(2, N):
        constraints.append(f"(= (- in{i} in{i-1}) (- in{i-1} in{i-2}))")

    # Join the individual constraints into a single SMT-LIB format assert
    assert_clause = "(assert (and " + " ".join(constraints) + "))"
    
    return assert_clause

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)