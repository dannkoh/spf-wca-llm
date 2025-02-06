def generate_constraints(N):
    if N == 1:
        return "None"
    
    constraints = []
    midpoint = (N // 2)
    
    # Increasing sequence
    for i in range(midpoint):
        constraints.append(f"( < in{i} in{i+1})")

    # Decreasing sequence
    for i in range(midpoint, N - 1):
        constraints.append(f"( > in{i} in{i+1})")
    
    if constraints:
        constraint_str = " (and ".join(constraints) + ")" * len(constraints)
    else:
        constraint_str = ""
        
    return f"(assert (and {constraint_str}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)