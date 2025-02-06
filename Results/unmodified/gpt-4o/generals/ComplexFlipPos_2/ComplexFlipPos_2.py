def generate_constraints(N: int) -> str:
    # Initial empty list to hold the constraints
    constraints_list = []

    # Special case for N=1
    if N == 1:
        return ""  # No constraints

    # Add constraints for the general case N >= 2
    for i in range(N):
        if i % 2 == 0 and i + 3 < N:
            constraints_list.append(f"( < in{i} in{i+3} )")
        elif i % 2 == 0 and i + 2 < N:
            constraints_list.append(f"( < in{i} in{i+2} )")
        elif i % 2 == 1:
            constraints_list.append(f"( < in{i} in{i-1} )")

    # Construct the nested and structure of the constraints
    constraints = " (and " + " ".join(constraints_list) + ") " if constraints_list else ""

    # Return the constraints in the desired format
    return f"(assert{constraints})"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)