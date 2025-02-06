def generate_constraints(N):
    if N == 1:
        return ""  # No constraints for N=1

    constraints = []

    if N == 2:
        constraints.append(f"( < in0 in1 )")

    elif N == 3:
        constraints.append(f"( < in0 in2 )")

    elif N == 4:
        constraints.append(f"( < in0 in3 )")
        constraints.append(f"( < in1 in2 )")

    elif N == 5:
        constraints.append(f"( < in0 in4 )")
        constraints.append(f"( < in1 in3 )")

    elif N == 6:
        constraints.append(f"( < in0 in5 )")
        constraints.append(f"( < in1 in4 )")
        constraints.append(f"( < in2 in3 )")

    elif N == 7:
        constraints.append(f"( < in0 in6 )")
        constraints.append(f"( < in1 in5 )")
        constraints.append(f"( < in2 in4 )")

    elif N == 8:
        constraints.append(f"( < in0 in7 )")
        constraints.append(f"( < in1 in6 )")
        constraints.append(f"( < in2 in5 )")
        constraints.append(f"( < in3 in4 )")

    elif N == 9:
        constraints.append(f"( < in0 in8 )")
        constraints.append(f"( < in1 in7 )")
        constraints.append(f"( < in2 in6 )")
        constraints.append(f"( < in3 in5 )")

    elif N == 10:
        constraints.append(f"( < in0 in9 )")
        constraints.append(f"( < in1 in8 )")
        constraints.append(f"( < in2 in7 )")
        constraints.append(f"( < in3 in6 )")
        constraints.append(f"( < in4 in5 )")

    return "(assert (and " + " ".join(constraints) + "))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)