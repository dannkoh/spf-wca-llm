def generate_constraints(N: int) -> str:
    constraints = "(assert "
    for i in range(N):
        constraints += "(= in{} 'x) ".format(i)
    constraints = constraints.strip() + ")"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)