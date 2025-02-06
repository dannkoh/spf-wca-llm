def generate_constraints(N):
    constraints = ''
    if N >= 3:
        conditions = []
        for i in range(N):
            conditions.append(f'(and (not (= in{i} 95)) (= in{i} 45))')
        constraints = f"(assert (and {' '.join(conditions)}))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)