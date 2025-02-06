def generate_constraints(N: int) -> str:
    constraints = "(assert (and"
    
    for i in range(N - 1):
        if i % 2 == 0:
            constraints += f" ( =  in{i} in{i+1})"
        else:
            constraints += f" ( <  in{i} in{i+1})"
    
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)