def generate_constraints(N: int) -> str:
    constraints = []
    for k in range(N):
        next_k = (k + 1) % N
        constraints.append(f'(assert ( < in{k} in{next_k}))')
    return'&& '.join(constraints)

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)