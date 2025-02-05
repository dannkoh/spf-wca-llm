def generate_constraints(N: int) -> str:
    if N < 3 or N > 15:
        return "(assert false)"  # Length constraint

    constraints = "(assert (and "
    
    for i in range(N):
        constraints += f"(not (= in{i} 95)) (=" f" in{i} 45) "
    
    constraints = constraints.strip() + "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)