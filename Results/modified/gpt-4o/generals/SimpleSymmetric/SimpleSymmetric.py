def generate_constraints(N):
    constraints = []
    for i in range(1, N):
        for j in range(i):
            constraints.append(f"( = in{i}x{j} in{j}x{i})")
            
    if constraints:
        constraints = " ".join(constraints)
        smt_constraints = f"(assert (and {constraints}))"
    else:
        smt_constraints = ""
    
    return smt_constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)