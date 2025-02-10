def generate_constraints(N: int) -> str:
    constraints = []
    for k in range(2, N + 1):
        constraints.append(f'(assert (= in{k} (+ in{k-1} in{k-2}))')
    return 'and' +'and '.join(constraints) if N > 1 else 'true'
N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)