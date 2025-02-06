def generate_constraints(N):
    constraints = ""
    if N >= 3:
        constraints += "(assert (and"
        for i in range(N):
            constraints += " (and (not (= in{} 64)) (not (= in{} 35)) (not (= in{} 36))  (= in{} 37))".format(i,i,i,i)
        constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)