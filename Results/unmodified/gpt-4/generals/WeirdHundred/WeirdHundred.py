def generate_constraints(N: int) -> str:
    if N == 1:
        # Return an empty string when the input size is 1
        return ''

    constraints = ['(assert (and (and (not ( = in0 1))  ( =  in0 0))']
    for i in range(1, N):
        constraints.append(' ( >=  in{} 100)'.format(i))
    constraints.append('))')

    return ''.join(constraints)

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)