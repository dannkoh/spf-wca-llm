def generate_constraints(N):
    constraints = ""
    if N >= 3:
        conditions = []
        for i in range(2, N):
            conditions.append(f"( = in{i} ( + in{i-1} in{i-2}))")
        constraints = "(assert " + " ".join(["(and"] * (N-3) + conditions + [")"] * (N-3)) + ")"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)