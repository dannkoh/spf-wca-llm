def generate_constraints(N):
    constraints_parts = []
    for i in range(3, N, 3):
        constraints_parts.append(f"(= in{i} 0)")
    if constraints_parts:
        constraints = "(assert " + "(and " * (len(constraints_parts)-1)
        constraints += " ".join(constraints_parts)
        constraints += ")" * (len(constraints_parts)-1) + ")"
    else:
        constraints = "None"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)