def generate_constraints(N: int) -> str:
    constraints = []
    for i in range(3, N + 1, 3):
        constraints.append(f'(assert ( = in{i} 0))')
    if not constraints:
        return ''
    return '(and'+'and '.join(constraints) + ')'

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)