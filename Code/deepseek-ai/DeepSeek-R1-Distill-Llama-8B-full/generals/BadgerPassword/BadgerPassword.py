def generate_constraints(N: int) -> str:
    constraints = []
    for i in range(N):
        constraint = f'(assert (and (not ( = in{i} 64)) (not ( = in{i} 35)) (not ( = in{i} 36)) ( = in{i} 37)))'
        constraints.append(constraint)
    return'&& '.join(constraints)

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)