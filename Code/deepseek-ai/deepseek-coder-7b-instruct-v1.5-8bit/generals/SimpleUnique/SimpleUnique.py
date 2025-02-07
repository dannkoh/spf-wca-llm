def generate_constraints(N: int) -> str:
    constraints = []
    for i in range(N):
        for j in range(i+1, N):
            constraints.append(f'(assert (not (= in{i} in{j})))')
    return '\n'.join(constraints)

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)