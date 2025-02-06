def generate_constraints(N: int) -> str:
    if N < 1:
        return "Invalid input: N must be at least 1."
    
    constraints = []
    
    if N > 1:
        # Add the condition for in0
        constraints.append("(and (not (= in0 1)) (= in0 0))")

        # Add conditions for in1 to in(N-1)
        for i in range(1, N):
            constraints.append(f"(>= in{i} 100)")

    if constraints:
        result = "(assert (and " + " ".join(constraints) + "))"
    else:
        result = "None"  # No constraints for N=1
    
    return result

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)