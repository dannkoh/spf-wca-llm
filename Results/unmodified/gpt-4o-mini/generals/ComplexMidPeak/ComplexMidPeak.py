def generate_constraints(N):
    if N == 1:
        return ""  # No constraints for N=1

    conditions = []
    
    # Build the increasing part
    for i in range(N - 1):
        if i < N // 2:
            conditions.append(f"( < in{i} in{i + 1})")
        else:
            break
        
    # Build the decreasing part
    for i in range(N - 1):
        if i >= N // 2:
            conditions.append(f"( > in{i} in{i + 1})")
            
    # Now, form the nested AND structure
    nested_conditions = []
    
    # Form the increasing conditions
    if conditions:
        current_group = []
        for i in range(N):
            if i < N // 2:
                current_group.append(conditions[i])
            else:
                break
        nested_conditions.append(f"(and {' '.join(current_group)})")
    
    # Add decreasing conditions
    current_group = []
    for i in range(N - 1):
        if i >= N // 2:
            current_group.append(conditions[i])
    
    if current_group:
        nested_conditions.append(f"(and {' '.join(current_group)})")
    
    final_conditions = " ".join(nested_conditions)
    return f"(assert (and {final_conditions}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)