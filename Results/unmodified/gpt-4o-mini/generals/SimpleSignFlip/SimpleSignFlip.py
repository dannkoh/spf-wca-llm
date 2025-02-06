def generate_constraints(N):
    if N == 1:
        return ""  # No constraints for N=1
    constraints = []
    
    for i in range(1, N):
        if i % 2 == 1:  # Odd index: should be an equality
            constraints.append(f"(= in{i-1} in{i})")
        else:  # Even index: should be a less-than
            constraints.append(f"(< in{i-1} in{i})")
    
    # Combine the constraints into a single assert statement
    assert_statement = "(and " + " ".join(constraints) + ")"
    return f"(assert {assert_statement})"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)