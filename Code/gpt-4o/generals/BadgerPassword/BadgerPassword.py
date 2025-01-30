def generate_constraints(N):
    # If N < 3, there are no constraints, since the algorithm returns false for < 3 characters
    if N < 3:
        return ""

    constraints_list = []
    # For each input character in the sequence, add the specific constraints.
    for i in range(N):
        constraints_list.append(f"(not (= in{i} 64))")  # Not '@'
        constraints_list.append(f"(not (= in{i} 35))")  # Not '#'
        constraints_list.append(f"(not (= in{i} 36))")  # Not '$'
        constraints_list.append(f"(= in{i} 37)")       # Must be '%'

    # Join all constraints with "and" and wrap them in an SMT-LIB assert statement
    constraints = "(assert (and " + " ".join(constraints_list) + "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)