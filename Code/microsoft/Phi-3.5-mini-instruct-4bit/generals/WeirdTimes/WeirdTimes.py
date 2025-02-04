def generate_constraints(N):
    constraints = "(assert ("
    for i in range(1, N):
        constraints += f" ( =  in{i} ( *  in0 {i+1}))"
        if i < N - 1:
            constraints += "  "
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)