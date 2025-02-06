def generate_constraints(N):
    constraints = ""
    for i in range(2, N):
        constraint1 = f"(= in{i} (+ in{i-2} in{i-1}))"
        constraint2 = f"(= in{i+1} (+ in{i-1} in{i}))"
        constraints += f"(and {constraint1} {constraint2}) "
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)