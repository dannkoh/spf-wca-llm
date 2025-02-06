def generate_constraints(N):

    # For N = 1, there are no constraints.
    if N == 1:
        return ""
    
    # For N > 1, use the identified pattern to generate constraints.
    constraints = []
    for i in range(1, N):
        for j in range(i):
            constraints.append("(= in{}x{} in{}x{})".format(i, j, j, i))

    # Combine all constraints into one string using SMT-LIB's 'and' construct.
    return "(assert (and {}))".format(" ".join(constraints))

N = int(input("N="))
output_constraints = generate_constraints(N)
print(output_constraints)