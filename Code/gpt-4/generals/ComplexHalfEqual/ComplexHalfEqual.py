def generate_constraints(N):
    # If N is 1, there are no constraints
    if N == 1: 
        return ""

    constraints = ['(assert (and ']

    for i in range(N-1):
        if i < (N//2):
            constraints.append('(= in{} in{}) '.format(i, i+1))
        else:
            constraints.append('(< in{} in{}) '.format(i, i+1))

    constraints.append('))')
    constraints_smt = ''.join(constraints)

    return constraints_smt

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)