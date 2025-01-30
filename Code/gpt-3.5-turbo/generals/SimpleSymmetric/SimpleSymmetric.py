def generate_constraints(N):
    constraints = ""

    for i in range(1, N):
        nested_conjunction = ""
        for j in range(i):
            nested_conjunction += f"(= in{i}x{j} in{j}x{i}) "
        constraints += nested_conjunction

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(f"(assert (and {constraints}))")