def generate_constraints(N: int) -> str:
    constraints = "(assert (and"
    
    # First half: all elements must be equal
    for i in range(1, (N + 1) // 2):
        constraints += f" ( = in{i-1} in{i})"
    
    # Second half: elements must be strictly increasing
    for i in range((N + 1) // 2, N):
        constraints += f" ( < in{i-1} in{i})"
    
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)