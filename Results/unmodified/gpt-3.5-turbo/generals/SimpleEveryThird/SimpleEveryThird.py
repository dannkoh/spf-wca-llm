def generate_constraints(N):
    constraints = ""

    for i in range(3, N + 1):
        if i % 3 == 0:
            constraints += f"(assert (= in{i-1} 0))\n"
    
    for i in range(6, N + 1, 3):
        constraints += f"(assert (= in{i-1} 0))\n"

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)