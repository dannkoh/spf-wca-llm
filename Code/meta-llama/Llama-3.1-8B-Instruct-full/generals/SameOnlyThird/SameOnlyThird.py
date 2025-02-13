def generate_constraints(N: int) -> str:
    constraints = ""
    if N <= 2:
        pass
    else:
        constraints = "(assert (= in2 0))"
        for i in range(3, N+1):
            constraints += f"\n(assert (= in{i} 0))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)