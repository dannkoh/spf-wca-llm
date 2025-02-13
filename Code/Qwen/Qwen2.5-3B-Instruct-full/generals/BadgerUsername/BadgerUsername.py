def generate_constraints(N: int) -> str:
    constraints = ""
    if N == 1:
        constraints = ""
    else:
        for i in range(1, N+1):
            idx = 2 * i - 1  # index for the value in the pair
            constraints += f"(assert (not (= in{i} 95)))\n"
            constraints += f"(assert (= in{i} 45))\n"

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)