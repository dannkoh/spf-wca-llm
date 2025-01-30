def generate_constraints(N):
    if N < 3:
        return ''
    else:
        constraints = []
        for i in range(2, N):  # Constraints start from 2
            constraints.append("(= in{} (+ in{} in{}))".format(i, i-1, i-2))
        constraints_string = "(assert (and {}))".format(' '.join(constraints))
        return constraints_string


N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)