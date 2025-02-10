def generate_constraints(N: int) -> str:
    constraints = []
    for i in range(N):
        put_i_1 = f'put{i}_1'
        put_i_0 = f'put{i}_0'
        get_0 = 'get0'
        constraints.append(f'(assert (and (mod (add {put_i_1} {put_i_0}) {N}))')
        constraints.append(f'(assert (not (eq {put_i_0} {get_0})))')
    constraints.append(f'(assert (mod (add get1 get0) {N}))')
    return'and '.join(constraints)

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)