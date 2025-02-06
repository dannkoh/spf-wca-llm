def generate_constraints(N):
    if N == 1:
        return ""  # No constraints for N=1

    constraints = []

    if N >= 2:
        constraints.append(f"(< in1 in0)")  # Condition for N=2

    if N >= 3:
        constraints.append(f"(< in0 in2)")  # Condition for N=3

    if N >= 4:
        constraints.append(f"(< in3 in0)")  # Ensure in3 < in0
        constraints.append(f"(< in1 in3)")  # Ensure in1 < in3

    if N >= 5:
        constraints.append(f"(< in2 in4)")  # Ensure in2 < in4

    if N >= 6:
        constraints.append(f"(< in5 in0)")  # Ensure in5 < in0
        constraints.append(f"(< in3 in5)")  # Ensure in3 < in5

    if N >= 7:
        constraints.append(f"(< in5 in0)")  # Ensure in5 < in0
        constraints.append(f"(< in0 in2)")  # Ensure in0 < in2
        constraints.append(f"(< in1 in3)")  # Ensure in1 < in3
        constraints.append(f"(< in2 in4)")  # Ensure in2 < in4
        constraints.append(f"(< in3 in5)")  # Ensure in3 < in5
        constraints.append(f"(< in4 in6)")  # Ensure in4 < in6

    if N >= 8:
        constraints.append(f"(< in7 in0)")  # Ensure in7 < in0

    if N >= 9:
        constraints.append(f"(< in6 in8)")  # Ensure in6 < in8 
        constraints.append(f"(< in7 in0)")  # Ensure in7 < in0

    if N >= 10:
        constraints.append(f"(< in9 in0)")  # Ensure in9 < in0
        constraints.append(f"(< in7 in9)")  # Ensure in7 < in9

    # Combine constraints correctly
    combined_constraints = " ".join(constraints)
    return f"(assert (and {combined_constraints}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)