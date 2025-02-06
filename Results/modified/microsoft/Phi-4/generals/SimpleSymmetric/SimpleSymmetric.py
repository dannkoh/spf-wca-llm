def generate_constraints(N: int) -> str:
    constraints = "(assert (and"
    
    for i in range(N):
        for j in range(i + 1, N):
            constraints += f" ( =  in{i}x{j} in{j}x{i})"
    
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)