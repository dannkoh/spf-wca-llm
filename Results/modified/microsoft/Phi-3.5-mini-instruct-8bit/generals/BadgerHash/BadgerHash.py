def generate_constraints(N):
    constraints = "(assert (and "
    
    # Constraints for each put operation
    for i in range(N):
        constraints += f" ( = 0 ( mod ( +  put{i}_1 put{i}_0) {N})) "
    
    # Constraint for the get operation
    constraints += f" ( = 0 ( mod ( +  get1 get0) {N})) "
    
    # Constraints to ensure no put key's first character matches the get key's first character
    for i in range(N):
        constraints += f" (not ( = put{i}_0 get0)) "
    
    constraints += "))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)