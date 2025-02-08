def generate_constraints(N: int) -> str:
    if N <= 1:
        return "(assert)"
    constraints = []
    for i in range(N):
        for j in range(i + 1, N):
            constraints.append(f"(not (= in{i} in{j}))"
                             )
    combined = " (and)".join(constraints)
    return f"(assert ({combined}))"
    
N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)