def generate_constraints(N: int) -> str:
    constraints = []
    for i in range(N):
        if i % 2 == 1:
            constraints.append(f'(assert (<= in{i} in{i-1}))')
        else:
            if i + 3 >= N:
                if i + 2 >= N:
                    continue
                constraints.append(f'(assert (<= in{i} in{i+2}))')
            else:
                constraints.append(f'(assert (<= in{i} in{i+3}))')
    return'&& '.join(constraints)

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)