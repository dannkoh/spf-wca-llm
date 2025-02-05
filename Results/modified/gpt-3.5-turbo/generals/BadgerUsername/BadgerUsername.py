def generate_constraints(N):
    constraints = []
    for i in range(N):
        constraint = "(and "
        for j in range(N):
            if j == i:
                constraint += f"(not (= in{j} 95)) (= in{j} 45) "
            else:
                constraint += f"(not (= in{j} 95)) "
        constraint += ")"
        constraints.append(constraint)
    return "\n".join(constraints)

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)