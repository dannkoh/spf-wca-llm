def generate_constraints(N):
    # No constraints for N=1
    if N == 1:
        return ""

    # Constraints list to hold the assert expressions
    constraints = []

    for i in range(1, N):
        # Inner constraints for the current level i
        inner_constraints = []
        
        # Create equality constraints for current level
        for j in range(i):
            inner_constraints.append(f"(= in{i}x{j} in{j}x{i})")
        
        if i == 2:
            # Directly append the correct assert for N=2
            constraints.append(inner_constraints[0])  # For N=2, directly assert this one
        else:
            # For i >= 3, encapsulate the constraints correctly
            if i > 2:
                inner_group = "(and " + " ".join(inner_constraints) + ")"
                constraints.append(inner_group)

    # Form the final constraint
    final_constraint = "(assert (and " + " ".join(constraints) + "))"
    
    return final_constraint

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)