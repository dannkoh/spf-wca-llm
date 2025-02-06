def generate_constraints(N):
    constraints = []
    for i in range(N):
        constraints.append(f"( <  in{i} 100)")
    
    final_constraint = ' (and' + ' (and'.join(constraints) + ')' * N
    final_constraint = "(assert " + final_constraint + ")"
    
    return final_constraint


N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)