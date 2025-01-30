def generate_constraints(N):
    constraints = []

    if N < 2:
        return ""
    else:
        for i in range(N - 1):
            for j in range(i + 1, N):
                constraints.append("(not (= in{} in{}))".format(i, j))
        smtlib_constraints = " (and " + " ".join(constraints) + "))"
        return "(assert{})".format("".join(smtlib_constraints))

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)