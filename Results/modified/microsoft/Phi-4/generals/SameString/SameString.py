def generate_constraints(N: int) -> str:
    # Start with the assert statement
    constraints = "(assert (and "
    
    # Generate each constraint for in0 to inN-1
    for i in range(N):
        constraints += f" ( =  in{i} 120) "
    
    # Close the and statement and return
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)