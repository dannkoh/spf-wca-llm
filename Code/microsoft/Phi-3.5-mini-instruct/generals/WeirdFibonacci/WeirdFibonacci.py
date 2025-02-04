def generate_constraints(N):
    constraints = "(assert "
    for i in range(2, N):
        constraints += f"(= in{i} (+ in{i-1} in{i-2}))"
        if i < N - 1:
            constraints += " "
    constraints += ")"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)