import math

def generate_constraints(N):
    constraints = "(assert (and "
    mid_point = math.ceil(N/2) - 1
    for i in range(N - 1):
        if i < mid_point:
            constraints += "(< in{} in{}) ".format(i, i+1)
        else:
            constraints += "(> in{} in{}) ".format(i, i+1)
    constraints += "))"
    return constraints
       
N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)