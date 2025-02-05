def generate_constraints(N):
    constraints = []
    
    # Loop through N inputs and create constraints
    for i in range(N):
        # Each in[i] should be less than 100
        constraints.append(f"( < in{i} 100)")
    
    # Join all constraints in an 'and' format
    constraints_str = " ".join(constraints)
    final_constraint = f"(assert (and {constraints_str}))"
    
    return final_constraint

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)