def generate_constraints(N):

    # Define a set of constraints that will validate a given input for a given value of N

    constraints = "(assert (and (forall (x Int) (y Int) (>= x 0) (< x N) (>= y 0) (< y N) (= (select a x) (select a y)) (< (select a x) (select a y)))))"

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)