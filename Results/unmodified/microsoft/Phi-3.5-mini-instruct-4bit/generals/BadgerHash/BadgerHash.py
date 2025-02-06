def generate_constraints(N):
    constraints = "(assert (and "
    
    # Constraints for each put key
    for i in range(N):
        constraints += f" ( = 0 ( mod ( + "
        for j in range(2):  # Each key has 2 characters
            constraints += f" put{i}_{j} "
        constraints += f") {N})) "
    
    # Constraint for the get key
    constraints += f" ( = 0 ( mod ( + get1 get0) {N})) "
    
    # Constraints to ensure no two keys start with the same character
    for i in range(N):
        constraints += f" (not ( = put{i}_0 get0)) "
        for j in range(i + 1, N):
            constraints += f" (not ( = put{i}_0 put{j}_0)) "
    
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)