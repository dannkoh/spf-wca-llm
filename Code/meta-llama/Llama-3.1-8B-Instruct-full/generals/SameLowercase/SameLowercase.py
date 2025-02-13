def generate_constraints(N: int) -> str:
    constraints = "(assert (and "
    i = 0
    while i < N:
        constraints += "(and ( >=  in" + str(i) + " 97) ( <=  in" + str(i) + " 122))"
        if i < N - 1:
            constraints += " "
        i += 1
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)