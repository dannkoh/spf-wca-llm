def generate_constraints(N):
    constraints = []

    # Start from N equals 3 as no constraints for N=1 and N=2
    for i in range(3, N+1):
        # Forming constraints in SMT-LIB format
        constraints.append("( =  ( -  in{} in{}) ( -  in{} in{}))".format(i-1, i-2, i-2, i-3))
  
    return "(assert (and {}))".format(' '.join(constraints)) if constraints else ''

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)