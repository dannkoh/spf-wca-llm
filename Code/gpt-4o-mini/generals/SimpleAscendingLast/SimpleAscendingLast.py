def generate_constraints(N):
    if N == 1:
        return ''  # No constraints for N=1
    elif N == 2:
        return "(assert ( < in1 in0 ))"  # Direct constraint for N=2

    # Start collecting constraints for N >= 3
    constraints = []
    
    # Create the ascending constraints
    for i in range(N - 1):
        if i < N - 2:  # For up to in(N-2)
            constraints.append(f"( < in{i} in{i + 1} )")
    
    # The last comparison must be for the last element to each other
    last_constraint = f"( < in{N - 1} in0 )"
    
    # Combine constraints without nesting too deeply
    if N == 3:
        return f"(assert (and {constraints[0]} {last_constraint}))"
    
    # Construct the assertion
    nested_constraints = f"(and {constraints[0]} {constraints[1]})" if len(constraints) > 1 else constraints[0]
    for c in constraints[2:]:
        nested_constraints = f"(and {nested_constraints} {c})"

    final_constraints = f"(and {nested_constraints} {last_constraint})"

    return f"(assert {final_constraints})"

# Example usage
N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)