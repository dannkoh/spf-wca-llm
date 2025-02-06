def generate_constraints(N):
    conditions = []
    for i in range(N):
        conditions.append(f"(and (>= in{i} 97) (<= in{i} 122))")
    joined_conditions = " ".join(conditions)
    constraints = f"(assert (and {joined_conditions}))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)