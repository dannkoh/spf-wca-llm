def generate_constraints(N):
    if N < 3:
        return ""  # No constraints for N = 1 and N = 2
    constraints = []
    for i in range(2, N):
        if i == 2:
            constraints.append(f"(= in{i} (+ in0 in1))")
        else:
            constraints.append(f"(= in{i} (+ in{i-1} in{i-2}))")
    
    # Join all constraints with "and"
    constraint_string = "(and " + " ".join(constraints) + ")"
    # Wrap with assert
    final_constraints = f"(assert {constraint_string})"
    
    return final_constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)