def generate_constraints(N):
    constraints = "(assert "
    for i in range(N):
        constraints += "(and (>= in" + str(i) + " 97) (<= in" + str(i) + " 122) "
    constraints += "true" + ")" * (2 * N + 1)
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)