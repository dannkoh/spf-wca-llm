def generate_constraints(N: int) -> str:
    if N < 3:
        return "(assert true)"  # No constraints needed for N < 3

    constraints = "(assert (and"
    for i in range(2, N):
        constraints += f" ( =  in{i} ( +  in{i-2} in{i-1}))"
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)