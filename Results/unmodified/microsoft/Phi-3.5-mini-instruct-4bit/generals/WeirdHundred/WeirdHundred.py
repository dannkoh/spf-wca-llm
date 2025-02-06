def generate_constraints(N: int) -> str:
    # Start with the base condition for the first element
    constraints = "(assert (and (not (= in0 1)) (>= in0 0))"
    
    # Add the increasing constraints for the rest of the elements
    for i in range(1, N):
        constraints += " (>= in" + str(i) + " 100))"
    
    # Close the assert statement
    constraints += ")"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)