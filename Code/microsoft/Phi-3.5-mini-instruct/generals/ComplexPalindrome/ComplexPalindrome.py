def generate_constraints(N):
    constraints = "(assert (and "
    for i in range(N // 2):
        constraints += f" (>= in{i} in{N-i-1})"
        if i < N // 2 - 1:
            constraints += " "
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)