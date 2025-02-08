def generate_constraints(N: int) -> str:
    constraints = []
    for i in range(N):
        constraints.append(f'(= in{i} 120)')
    body ='and '.join(constraints)
    return f'(assert (and {body}))'

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)