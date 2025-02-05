def generate_constraints(N):
    constraints = []
    for i in range(N):
        constraints.append(f"(assert (not (= in{i} 95)) (= in{i} 45))")
    return "\n".join(constraints)

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)