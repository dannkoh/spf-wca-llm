def generate_constraints(N: int) -> str:
    if N == 1:
        return ""
    constraints = []
    for i in range(1, N):
        constraints.append(f"(= in{i} (* in0 {i+1}))")
    return f"(assert (and {' '.join(constraints)}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)