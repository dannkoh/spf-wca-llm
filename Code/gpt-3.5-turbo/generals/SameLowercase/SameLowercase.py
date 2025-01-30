def generate_constraints(N):
    constraints = ""
    for i in range(N):
        constraint = f"(and (>= in{i} 97) (<= in{i} 122))"
        constraints = f"(and {constraints} {constraint})"
    return f"(assert {constraints})"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)