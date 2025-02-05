def generate_constraints(N):
    constraints = ""
    if N == 1:
        constraints = "(assert true)"
    else:
        for i in range(1, N):
            constraints += "(= in" + str(i) + " (* in0 " + str(i+1) + ")) "
        constraints = "(assert (and " + constraints.strip() + "))"
    return constraints

N = int(input("N="))
constraint_output = generate_constraints(N)
print(constraint_output)