def generate_constraints(N):
    if N == 1 or N == 2:
        return "None"

    constraints = []
    
    for i in range(N):
        constraints.append(f"(not (= in{i} 64))")
        constraints.append(f"(not (= in{i} 35))")
        constraints.append(f"(not (= in{i} 36))")
        constraints.append(f"(= in{i} 37)")

    constraint_str = "(assert (and " + " ".join(constraints) + "))"
    
    return constraint_str

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)