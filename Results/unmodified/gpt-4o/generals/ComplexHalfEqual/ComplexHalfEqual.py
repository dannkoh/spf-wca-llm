def generate_constraints(N):
    if N <= 1:
        return ""
    
    constraints_equal = []
    constraints_less_than = []
    
    mid = N // 2
    
    # Generate equality constraints for first half
    for i in range(mid):
        constraints_equal.append(f"( = in{i} in{i+1} )")
    
    # Generate less-than constraints for the second half
    for i in range(mid, N-1):
        constraints_less_than.append(f"( < in{i} in{i+1} )")
    
    # Combine all constraints into one expression
    combined_constraints = constraints_equal + constraints_less_than
    if combined_constraints:
        constraints = "(assert (and " + " ".join(combined_constraints) + "))"
    else:
        constraints = ""
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)