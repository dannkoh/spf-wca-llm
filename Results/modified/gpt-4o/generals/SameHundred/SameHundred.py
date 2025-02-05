def generate_constraints(N):
    constraints = "(assert "
    if N == 1:
        constraints += "( < in0 100)"
    else:
        constraint_list = " ".join([f"( < in{i} 100)" for i in range(N)])
        constraints += f"(and {constraint_list})"
    constraints += ")"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)