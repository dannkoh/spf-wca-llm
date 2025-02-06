def generate_constraints(N):
    constraints = ""
    for i in range(N-1):
        constraints += "(assert (and (= in{} in{}) (< in{} in{}))) ".format(i, i+1, i, i+1)
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)