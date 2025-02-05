def generate_constraints(N):
    constraint_terms = []
    for i in range(1, N):
        constraint_terms.append(f"( = in{i} ( * in0 {i+1}))")
    if constraint_terms:
        constraints = f'(assert (and {" ".join(constraint_terms)}))'
    else:
        constraints = ''
    return constraints


N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)