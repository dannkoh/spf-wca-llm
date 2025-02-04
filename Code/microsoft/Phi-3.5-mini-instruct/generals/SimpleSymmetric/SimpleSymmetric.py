def generate_constraints(N):
    constraints = "(assert (and"
    for i in range(1, N):
        for j in range(i):
            constraints += f" ( =  in{i}x{j} in{j}x{i})"
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)