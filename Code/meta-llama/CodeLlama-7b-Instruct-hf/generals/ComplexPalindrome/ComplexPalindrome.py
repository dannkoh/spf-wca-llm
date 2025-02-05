def generate_constraints(N):
    constraints = []
    for i in range(N):
        constraints.append(f"(assert (< in{i} in{i+1}))")
    return "\n".join(constraints)