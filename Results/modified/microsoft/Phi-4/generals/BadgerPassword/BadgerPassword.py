def generate_constraints(N: int) -> str:
    constraints = "(assert (and "
    
    for i in range(N):
        constraints += f"(not (= in{i} 64)) "
        constraints += f"(not (= in{i} 35)) "
        constraints += f"(not (= in{i} 36)) "
        constraints += f"(= in{i} 37)) "
    
    constraints = constraints.strip() + ")"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)