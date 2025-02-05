def generate_constraints(N):
    if N == 1:
        return ""  # No constraints for N=1
    
    constraints = []
    
    for i in range(1, N):
        constraints.append(f"(= in{i} (* in0 {i + 1}))")
    
    return f"(assert (and " + " ".join(constraints) + "))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)