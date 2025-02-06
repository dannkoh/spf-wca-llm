def generate_constraints(N):
    constraints = []

    if N == 1:
        return None
    elif N > 1:
        for i in range(N - 2):
            constraints.append("( <  in{} in{})".format(i+2, i))
        constraints.append("( <  in{} in0)".format(N-1))

        for i in range(N - 2, 0, -1):
            constraints.append("( <  in{} in{})".format(N-1-i, N-3-i))

    return "(assert (and {}))".format(" ".join(constraints))

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)