def generate_constraints(N: int) -> str:
    if N == 1:
        return ""
    constraints = []
    for i in range(N // 2):
        j = N - i - 1
        constraint = f"(assert ( < in{i} in{j}))"
        constraints.append(constraint)
    if len(constraints) == 1:
        return constraints[0]
    else:
        combined = "and ".join(constraints)
        return f"(assert {combined})"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)