def generate_constraints(N):
    constraints = ""
    for i in range(N):
        constraints += "(assert (and (>= in{0} 97) (<= in{0} 122)))".format(i)
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)