def generate_constraints(N):
    constraints = "(assert (and "
    for i in range(N):
        constraints += "(and (and (and (and (and (and (and (and (and (and (and "
        for j in range(N):
            if j == i:
                constraints += "(= in{} 37)".format(j)
            else:
                constraints += "(not (= in{} 37))".format(j)
        constraints += ")) "  # Closing parentheses for inner 'and's
    constraints += "))"  # Closing parentheses for the outer 'and'
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)