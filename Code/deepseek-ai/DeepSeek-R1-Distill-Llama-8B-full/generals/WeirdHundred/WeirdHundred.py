def generate_constraints(N: int) -> str:
    if N == 1:
        return ''
    conditions = [
        '(not (= in0 1))',
        '(= in0 0)',
    ]
    for i in range(1, N):
        conditions.append(f'(>= in{i} 100)')
    return f'assert (and {(" and ").join(conditions)})'

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)