def generate_constraints(N):
    constraints = []
    
    # Iterate over all pairs (i, j) where i < j
    for i in range(N):
        for j in range(i + 1, N):
            constraints.append(f"(not ( = in{i} in{j}))")
    
    # Join all constraints with 'and' and format in SMT-LIB 'assert' syntax
    if constraints:
        constraints_str = "(assert (and " + " ".join(constraints) + "))"
    else:
        constraints_str = ""
    
    return constraints_str

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)