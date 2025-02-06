def generate_constraints(N: int) -> str:
    # Start with the assert statement
    constraints = "(assert (and "
    
    # Add each constraint for in0 to in(N-1)
    for i in range(N):
        constraints += f"(< in{i} 100)"
        if i < N - 1:
            constraints += " "
    
    # Close the and statement
    constraints += "))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)