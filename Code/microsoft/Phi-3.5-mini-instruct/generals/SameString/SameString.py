def generate_constraints(N):
    constraints = "(assert (and "
    for i in range(N):
        constraints += f" ( =  in{i} 120)"
        if i < N - 1:
            constraints += " "
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)