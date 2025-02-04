def generate_constraints(N):
    constraints = "(assert (and "
    for i in range(N):
        constraints += f" (>= in{i} 97) "
        constraints += f"(<= in{i} 122) "
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)