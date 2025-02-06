def generate_constraints(N):
    constraints = ""
    for i in range(N):
        constraints += f"(= in{i} 120) "
    return f"(assert (and {constraints}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)