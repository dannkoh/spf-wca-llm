def generate_constraints(N):
    constraints = []
    for i in range(N):
        for j in range(i+1, N):
            constraint = "(assert ( < in{} in{}))".format(i, j)
            constraints.append(constraint)
    return " ".join(constraints)

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)