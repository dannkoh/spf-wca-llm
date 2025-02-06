def generate_constraints(N: int) -> str:
    constraints = "(assert (and"
    
    # Calculate the midpoint
    midpoint = (N + 1) // 2
    
    # First half: strictly increasing
    for i in range(midpoint - 1):
        constraints += f" ( <  in{i} in{i+1})"
    
    # Second half: strictly decreasing
    for i in range(midpoint - 1, N - 1):
        constraints += f" ( >  in{i} in{i+1})"
    
    constraints += "))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)