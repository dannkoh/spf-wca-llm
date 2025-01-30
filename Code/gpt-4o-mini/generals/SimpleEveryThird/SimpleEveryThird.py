def generate_constraints(N):
    constraints = []
    
    if N >= 4:
        constraints.append("(= in3 0)")
    
    if N >= 7:
        constraints.append("(= in6 0)")

    if N >= 10:
        constraints.append("(= in9 0)")
    
    # Combine constraints
    if constraints:
        return "(assert (and " + " ".join(constraints) + "))"
    else:
        return ""

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)