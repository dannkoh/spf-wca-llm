def generate_constraints(N: int) -> str:

    initial_constraint = "(assert (<= in0 100)"
    
    if N == 1:
        return initial_constraint

    current_constraint = initial_constraint
    for i in range(1, N):
        next_constraint = f"(and {current_constraint} (> in{i} in{i-1}))"
        current_constraint = next_constraint

    return current_constraint + ")"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)