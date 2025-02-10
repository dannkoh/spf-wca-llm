def generate_constraints(N: int) -> str:
    constraints = []
    for i in range(N-1):
        constraints.append(f'(assert (in{i} = in{i+1}))')
    for i in range(1, N-1):
        constraints.append(f'(assert (in{i} < in{i+1}))')
    return'&& '.join(constraints)

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)