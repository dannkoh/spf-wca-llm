def generate_constraints(N):

    # Generate constraints for sorted array
    constraints = "(assert (and (forall (x) (y) (>= x y))"
    for i in range(N-1):
        constraints += " (and (< x{i} x{i+1}) (> x{i+1} x{i}))"
    constraints += "))"

    # Generate constraints for first element
    constraints += "(assert (< in0 in1))"

    # Generate constraints for length of array
    constraints += "(assert (= (len in) N))"

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)