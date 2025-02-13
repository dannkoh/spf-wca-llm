def generate_constraints(N: int) -> str:
    constraints = ""

    for i in range(N):
        for j in range(i+1, N):
            constraints += f"(assert (not (= in{i} in{j})))\n"

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)