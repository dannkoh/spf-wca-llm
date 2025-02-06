def generate_constraints(N):
    constraints = ""
    if N >= 3:
        constraints += "(assert (= in2 0))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)