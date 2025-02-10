def generate_constraints(N: int) -> str:
    if N == 1:
        return ""
    constraints = []
    for i in range(N // 2):
        constraints.append(f'(assert ( < in{i} in{i+1}))')
    if N >= 3:
        for j in range(N // 2, N - 1):
            constraints.append(f'(assert ( > in{j} in{j+1}))')
    return'&& '.join(constraints) if constraints else ""
N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)