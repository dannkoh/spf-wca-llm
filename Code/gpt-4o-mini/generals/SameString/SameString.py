def generate_constraints(N):
    assertions = []
    
    for i in range(N):
        assertions.append(f" ( = in{i} 120)")
    
    constraints = "(assert (and" + "".join(assertions) + "))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)