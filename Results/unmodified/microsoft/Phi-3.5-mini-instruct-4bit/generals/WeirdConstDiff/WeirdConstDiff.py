def generate_constraints(N):
    constraints = []
    for i in range(2, N):
        constraints.append(f"(= (- in{i} in{i-1}) (- in{i-1} in{i-2}))")
    
    if constraints:
        return f"(assert (and {' '.join(constraints)}))"
    else:
        return "(assert true)"  # No constraints for N < 2

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)