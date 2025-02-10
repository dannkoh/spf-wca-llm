def generate_constraints(N: int) -> str:
    if N == 0:
        return ''
    K = N // 2
    constraints = []
    for i in range(K):
        j = N - 1 - i
        constraints.append(f'( < in{i} in{j})')
    if not constraints:
        return ''
    # Build the nested AND structure
    s = constraints[0]
    for c in constraints[1:]:
        s = f'(and {c} {s})'
    return f'(assert {s})'

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)