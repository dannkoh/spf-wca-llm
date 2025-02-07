def generate_constraints(N: int) -> str:
    if N < 3:
        return ""
    constraints = []
    for k in range(2, N):
        var = f"in{k}"
        prev1 = f"in{k-2}"
        prev2 = f"in{k-1}"
        constraints.append(f"(= {var} (+ {prev1} {prev2}))")
    return "(assert " + " and ".join(constraints) + ")"