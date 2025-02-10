def generate_constraints(N: int) -> str:
    if N == 1:
        return ""
    constraints = []
    for i in range(N-1):
        if i % 2 == 0:
            constraints.append(f"( = in{i} in{i+1})")
        else:
            constraints.append(f"( < in{i} in{i+1})")
    if len(constraints) == 1:
        return f"(assert {constraints[0]})"
    else:
        return f"(assert (and {'and '.join(constraints) }))"
N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)