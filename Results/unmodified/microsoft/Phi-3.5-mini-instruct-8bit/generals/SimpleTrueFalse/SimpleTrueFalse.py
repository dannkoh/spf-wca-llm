def generate_constraints(N):
    constraints = "(assert (and"
    for i in range(N):
        if i % 2 == 0:
            constraints += f" ( = in{i} 1)"
        else:
            constraints += f" ( = in{i} 0)"
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)