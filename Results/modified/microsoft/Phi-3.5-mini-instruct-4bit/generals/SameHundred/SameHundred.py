def generate_constraints(N):
    # Start the assertion with the first condition
    constraints = "(assert ("
    
    # Add each condition with the appropriate nesting
    for i in range(N):
        if i == 0:
            constraints += f" (< in{i} 100)"
        else:
            constraints += f" (and (< in{i} 100))"
    
    # Close the assertion
    constraints += "))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)