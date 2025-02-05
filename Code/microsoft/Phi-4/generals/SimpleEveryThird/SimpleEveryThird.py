def generate_constraints(N: int) -> str:
    constraints = []
    for i in range(3, N, 3):
        constraints.append(f"(= in{i} 0)")
    
    if constraints:
        return f"(assert (and {' '.join(constraints)}))"
    else:
        return "(assert true)"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)