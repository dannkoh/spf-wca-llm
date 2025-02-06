def generate_constraints(N: int) -> str:
    constraints = "(assert (and "
    
    # Add constraints for each put operation
    for i in range(N):
        constraints += f" ( = 0 (mod (+ put{i}_1 put{i}_0) {N})) "
    
    # Add constraint for the get operation
    constraints += f" ( = 0 (mod (+ get1 get0) {N})) "
    
    # Add constraints to ensure putX_0 is not equal to get0
    for i in range(N):
        constraints += f" (not ( = put{i}_0 get0)) "
    
    constraints += "))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)