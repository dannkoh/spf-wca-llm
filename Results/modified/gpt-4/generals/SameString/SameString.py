def generate_constraints(N):
    constraints = "(assert (and"
    
    for i in range(N):
        constraints += " ( =  in{} 120)".format(i)

    constraints += "))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)