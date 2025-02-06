def generate_constraints(N):
    constraints = ""
    for i in range(N):
        constraint = f"( < in{i} 100)"
        for j in range(i):
            constraint = f"(and {constraint} ( < in{j} 100))"
        constraints += f"(and {constraint}) "
    return f"(assert {constraints})"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)