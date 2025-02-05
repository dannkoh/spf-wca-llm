def generate_constraints(N):

    constraints = ""
    for i in range(N):
        constraints += "(assert (< in" + str(i) + " 0))\n"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)