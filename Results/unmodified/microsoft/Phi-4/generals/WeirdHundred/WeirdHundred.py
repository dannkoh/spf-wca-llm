def generate_constraints(N: int) -> str:
    # Start with the constraint that in0 must be 0
    constraints = "(assert (and ( = in0 0)"
    
    # Add constraints for in1 to inN-1 to be >= 100
    for i in range(1, N):
        constraints += f" ( >= in{i} 100)"
    
    # Close the and expression
    constraints += "))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)