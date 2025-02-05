def generate_constraints(N):
    if N == 1:
        return "None"

    constraints = "(assert (and "
    for i in range(N-1):
        for j in range(i+1, N):
            constraints += f"(not (= in{i} in{j})) "
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)