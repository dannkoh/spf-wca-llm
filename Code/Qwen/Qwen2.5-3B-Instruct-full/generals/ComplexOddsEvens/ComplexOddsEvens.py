def generate_constraints(N: int) -> str:

    if N == 1:
        return ""
    constraints = "("
    for i in range(1, N):
        constraints += f"(assert (< in{i} in{i+1}))"
    if N % 2 == 1:
        constraints += f"(assert (< in{N} in2))"
    constraints += ")"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)