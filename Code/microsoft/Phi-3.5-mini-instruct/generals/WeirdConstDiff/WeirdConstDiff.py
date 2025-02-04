def generate_constraints(N):
    constraints = "(assert (and"
    for i in range(2, N):
        constraints += f" ( =  ( -  in{i} in{i-1}) ( -  in{i-1} in{i-2}))"
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)