def generate_constraints(N: int) -> str:
    clauses = []
    for i in range(N):
        val = 1 if i % 2 == 0 else 0
        clauses.append(f'( = in{i} {val})')
    return f'(assert (and { " ".join(clauses) }))'

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)