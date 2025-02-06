def generate_constraints(N):
    # Create a list of constraints for each input element
    constraints = []
    for i in range(N):
        constraints.append(f"( <  in{i} 100)")
    
    # Join all constraints with 'and' and wrap them in an assert statement
    constraints_str = " ".join(constraints)
    smt_constraints = f"(assert (and {constraints_str}))"
    
    return smt_constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)