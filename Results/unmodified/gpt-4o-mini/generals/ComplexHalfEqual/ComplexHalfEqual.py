def generate_constraints(N):
    if N < 1:
        return ''  # No constraints for non-positive N

    constraints = []

    # Handle the case for N=1
    if N == 1:
        return ''  # No constraints

    # Generating equalities for the first half (0 to N//2 - 1)
    equalities = []
    for i in range(N // 2):
        equalities.append(f'(= in{i} in{i + 1})')

    # Combine all equalities in one assert statement
    if equalities:
        constraints.append(f'(and ' + ' '.join(equalities) + ')')

    # Generate inequalities for the increasing part from N//2 to N-2
    inequalities = []
    for i in range(N // 2, N - 1):
        inequalities.append(f'( < in{i} in{i + 1})')

    # Combine equalities and inequalities
    if inequalities:
        all_conditions = ' '.join(constraints) + ' ' + ' '.join(inequalities)
        constraints = [f'(assert (and {all_conditions}))']
    else:
        constraints = [f'(assert (and {constraints[0]}))']

    return constraints[0]

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)