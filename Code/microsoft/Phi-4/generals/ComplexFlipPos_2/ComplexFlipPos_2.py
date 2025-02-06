def generate_constraints(N: int) -> str:
    constraints = "(assert (and"
    
    for i in range(N):
        if i % 2 == 0:
            if i + 3 < N:
                constraints += f" ( <  in{i} in{i+3})"
            elif i + 2 < N:
                constraints += f" ( <  in{i} in{i+2})"
        else:
            if i - 1 >= 0:
                constraints += f" ( <  in{i} in{i-1})"
    
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)