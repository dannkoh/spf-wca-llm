def generate_constraints(N: int) -> str:

    constraints = ""
    for i in range(1, N+1):
        constraints += f"(assert (= in{i} 120))\n"
    
    # Ensure all previous constraints are included and surrounded by parentheses
    constraints = "(assert (and " + constraints + f"))\n"

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)