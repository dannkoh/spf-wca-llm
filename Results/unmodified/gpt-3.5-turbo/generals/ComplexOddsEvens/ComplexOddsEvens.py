def generate_constraints(N):
    constraints = ""

    for i in range(N):
        constraints += "(and "
        for j in range(N):
            if j != i:
                constraints += "( < in{} in{}) ".format(j, i)
        constraints += ") "

    return "(assert " + constraints.strip() + ")"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)