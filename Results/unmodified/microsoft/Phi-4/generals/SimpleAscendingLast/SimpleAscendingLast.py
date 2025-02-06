def generate_constraints(N: int) -> str:
    if N == 1:
        return "(assert true)"
    
    constraints = []
    for i in range(N - 1):
        constraints.append(f"( <  in{i} in{i+1})")
    constraints.append(f"( <  in{N-1} in0)")
    
    # Combine all constraints using 'and'
    combined_constraints = " ".join(["(and"] + constraints + [")"])
    return f"(assert {combined_constraints})"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)