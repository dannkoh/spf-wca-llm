def generate_constraints(N):

    # Define a set of constraints that ensure the input is a permutation of the numbers 0 through N-1
    constraints = "(assert (and (forall (x Int) (y Int) (>= x 0) (< x N) (>= y 0) (< y N) (= (select in x) (select in y)) (not (= x y))))"

    # Add additional constraints to ensure that the first and last elements are equal
    constraints += "(assert (and (= (select in 0) (select in N-1))))"

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)