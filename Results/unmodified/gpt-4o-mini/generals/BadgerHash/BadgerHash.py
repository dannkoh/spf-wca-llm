def generate_constraints(N):
    constraints = []

    # Constraints for put operations modulo N
    for i in range(N):
        constraints.append(f"(= 0 (mod (+ put{i}_1 put{i}_0) {N}))")

    # Constraints for get operations modulo N
    constraints.append(f"(= 0 (mod (+ get1 get0) {N}))")

    # Constraints for uniqueness: ensure no putX_0 equals get0
    for i in range(N):
        constraints.append(f"(not (= put{i}_0 get0))")

    # Combine all constraints into a single assertion
    assert_clause = "(assert (and " + " ".join(constraints) + "))"
    
    return assert_clause

# Get input from user
N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)