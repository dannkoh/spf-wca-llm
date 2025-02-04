def generate_constraints(N):
    constraints = "(assert (and"
    
    # First half: equality constraints
    for i in range(N // 2):
        constraints += f" ( =  in{i} in{i+1})"
    
    # Second half: inequality constraints
    for i in range(N // 2, N - 1):
        constraints += f" ( <  in{i} in{i+1})"
    
    constraints += "))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)