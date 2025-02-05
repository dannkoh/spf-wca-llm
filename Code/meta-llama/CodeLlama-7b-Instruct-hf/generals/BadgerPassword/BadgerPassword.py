def generate_constraints(N):
    constraints = []
    for i in range(N):
        constraints.append(f"(assert (and (op1 in{i} digit))")
        constraints.append(f"(assert (and (op2 in{i} lowercase))")
        constraints.append(f"(assert (and (op3 in{i} uppercase))")
        constraints.append(f"(assert (and (op4 in{i} special_char))")
    constraints.append(f"(assert (and (op5 in0 in1 in2 in3... in{N-1}))")
    return " ".join(constraints)

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)