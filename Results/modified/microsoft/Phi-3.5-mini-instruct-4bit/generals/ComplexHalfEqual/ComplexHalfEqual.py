def generate_constraints(N):
    constraints = []
    
    # First half: equality constraints
    for i in range(N // 2 - 1):
        constraints.append(f"(= in{i} in{i+1})")
    
    # Second half: inequality constraints
    for i in range(N // 2, N - 1):
        constraints.append(f"(< in{i} in{i+1})")
    
    # Combine all constraints with 'and'
    combined_constraints = " ".join(f"({c})" for c in constraints)
    return f"(assert (and {combined_constraints}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)