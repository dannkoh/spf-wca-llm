def generate_constraints(N: int) -> str:
    if N == 1:
        return ""
    constraints = "(assert (and (not (= in0 1)) (= in0 0)))"
    for i in range(1, N):
        constraints += f"(assert (>= in{i} 100)) "
        if i > 1:
            constraints += f"(assert (distinct in{i} in{i-1}))"
    return constraints.strip()

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)