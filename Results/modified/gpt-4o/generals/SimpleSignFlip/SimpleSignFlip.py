def generate_constraints(N):
    constraints = []
    for i in range(N - 1):
        if i % 2 == 0:
            constraints.append(f"(= in{i} in{i+1})")
        else:
            constraints.append(f"(< in{i} in{i+1})")
    
    # Concatenate the constraints using 'and'
    if constraints:
        combined_constraints = "(and " + " ".join(constraints) + ")"
        return f"(assert {combined_constraints})"
    return str(None)  # For N=1, return None

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)