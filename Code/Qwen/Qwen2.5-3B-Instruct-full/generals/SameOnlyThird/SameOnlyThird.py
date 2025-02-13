def generate_constraints(N: int) -> str:

    if N == 1:
        return ""
    if N == 2:
        return ""
    constraints = ""
    constraints += "(assert (= in2 0)"
    for i in range(1, N):
        constraints += f")(assert (<= in{i} 100))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)