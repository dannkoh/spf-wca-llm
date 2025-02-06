def generate_constraints(N):
    if N <= 1:
        return ""  # No constraints for N less than or equal to 1
    
    constraints = []
    
    # Generate all pairs of inequalities
    for i in range(N):
        for j in range(i + 1, N):
            constraints.append(f"(not (= in{i} in{j}))")
    
    # Combine all constraints into a single 'and' operation
    return f"(assert (and {' '.join(constraints)}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)