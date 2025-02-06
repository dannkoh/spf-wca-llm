def generate_constraints(N):
    # Start with an empty list to store individual constraints
    constraints = []
    
    # Loop through each index from 0 to N-1
    for i in range(N):
        # Determine the constraint based on even or odd index
        if i % 2 == 0:
            constraints.append(f"(= in{i} 1)")  # even index -> true
        else:
            constraints.append(f"(= in{i} 0)")  # odd index -> false
    
    # Combine all constraints using 'and'
    constraint_string = "(assert (and " + " ".join(constraints) + "))"
    
    return constraint_string

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)