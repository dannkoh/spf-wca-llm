def generate_constraints(N: int) -> str:
    constraints = []
    for i in range(1, N):
        for j in range(i):
            var1 = f"in{j}x{i}"
            var2 = f"in{i}x{j}"
            constraints.append(f"(= {var1} {var2})")
    return f"(assert (and {' '.join(constraints)}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)