def generate_constraints(N: int) -> str:
    if N < 3:
        return ""
    constraints = []
    for i in range(N):
        constraints.append("(not (= in_i 95))")
        constraints.append("(in_i 45)")
    return f"(assert (and {''.join(constraints) }))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)