def generate_constraints(N: int) -> str:
    constraints = "(assert (and "
    for i in range(0, N-1, 2):
        constraints += f" ( <  in{i+1} in{i}) "
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)