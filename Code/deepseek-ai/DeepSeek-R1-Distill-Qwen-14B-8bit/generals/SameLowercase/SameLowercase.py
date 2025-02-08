def generate_constraints(N: int) -> str:
    constraints = []
    for i in range(N):
        constraints.append(f"(>= in{i} 97)")
        constraints.append(f"(<= in{i} 122)")
    return f"(assert (and {' '.join(constraints)}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)