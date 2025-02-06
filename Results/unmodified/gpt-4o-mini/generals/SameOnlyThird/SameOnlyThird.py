def generate_constraints(N):
    if N >= 3:
        constraints = "(assert ( = in2 0))"
    else:
        constraints = ""  # No constraints for N = 1 or N = 2
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)