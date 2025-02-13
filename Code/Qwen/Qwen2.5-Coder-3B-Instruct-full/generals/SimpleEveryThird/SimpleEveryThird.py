def generate_constraints(N: int) -> str:
    constraints = ""
    for i in range(1, N+1):
        if i % 3 == 0:
            constraints += f"(assert (= in{i} 0))\n"
        else:
            # For non-multiples of 3, ensure they are either zero or within a reasonable range
            constraints += f"(assert (or (< in{i} 100) (> in{i} -100)))\n"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)