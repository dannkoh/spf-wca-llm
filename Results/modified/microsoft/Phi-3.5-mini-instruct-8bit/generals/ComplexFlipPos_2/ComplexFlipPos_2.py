def generate_constraints(N: int) -> str:
    constraints = ""
    for i in range(N):
        left = f"in{i}"
        right = f"in{i+1}"
        constraints += f"(assert (< {left} {right}))\n"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)