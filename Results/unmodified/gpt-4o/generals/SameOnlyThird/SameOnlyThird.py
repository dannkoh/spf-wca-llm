def generate_constraints(N):
    if N >= 3:
        constraints = "(assert ( = in2 0))"
    else:
        constraints = ""
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)