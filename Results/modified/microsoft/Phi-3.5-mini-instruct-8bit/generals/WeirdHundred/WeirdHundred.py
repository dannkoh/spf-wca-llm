def generate_constraints(N: int) -> str:
    constraints = "(assert (and "
    for i in range(N):
        if i == 0:
            constraints += "(not (= in0 1))"
        else:
            constraints += "(>= in" + str(i) + " 100)"
        if i < N - 1:
            constraints += " "
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)