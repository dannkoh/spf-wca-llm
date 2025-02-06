def generate_constraints(N: int) -> str:
    constraints = ""
    for i in range(N):
        if i == 0:
            constraints += "(assert (not (< in0 in1)))"
        else:
            constraints += "(assert (and "
            for j in range(i):
                constraints += "(< in{} in{}) ".format(i, i+j+1)
            constraints = constraints[:-1] + ")"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)