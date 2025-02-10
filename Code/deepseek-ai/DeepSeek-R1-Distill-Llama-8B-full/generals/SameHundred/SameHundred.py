def generate_constraints(N: int) -> str:
    constraints = ['( < in' + str(i) +'100)' for i in range(N)]
    return f'(assert (and { " and ".join(constraints) }))'

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)