def generate_constraints(N: int) -> str:
    constraints = "(assert (and"
    for i in range(1, N):
        constraints += f" ( =  in{i} ( *  in0 {i + 1}))"
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)