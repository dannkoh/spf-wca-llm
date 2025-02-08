def generate_constraints(N: int) -> str:
    conditions = []
    for i in range(N):
        conditions.append(f"(not (= in{i} 95))")
        conditions.append(f"(= in{i} 45)")
    constraint = f"(assert (and {' '.join(conditions)}))"
    return constraint

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)