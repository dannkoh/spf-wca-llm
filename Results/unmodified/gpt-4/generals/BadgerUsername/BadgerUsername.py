def generate_constraints(N):
    # No constraints for N = 1 and N = 2
    if N < 3:
        return ''

    # Initialize constraints
    constraints = "true"

    for i in range(0, N):
        # Nested constraints for each character
        constraints = "(and (and (not ( = in{} 95))  ( =  in{} 45)) {})".format(i, i, constraints)
        
    constraints = "(assert {})".format(constraints)
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)