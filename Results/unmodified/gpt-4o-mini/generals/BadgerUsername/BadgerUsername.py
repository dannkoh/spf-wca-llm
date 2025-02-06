def generate_constraints(N):
    if N < 3:
        return ""  # No constraints for N=1 or N=2

    constraints = []
    for i in range(N):
        constraints.append(f"(not ( = in{i} 95))")
        constraints.append(f"(= in{i} 45)")

    # Join the constraints for the assert statement
    return f"(assert (and {' '.join(constraints)}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)