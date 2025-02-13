def generate_constraints(N: int) -> str:

    if N <= 2:
        return ""

    constraints = "(assert (and"
    constraints += f" (and  ( =  ( -  in1 in0) ( -  in2 in1))"

    for i in range(2, N):
        constraints += f"  (and  ( =  ( -  in{i} in{i-1}) ( -  in{i+1} in{i}))"

    if N > 2:
        constraints += f" (assert (and {' '.join(['(<= - in{i} 100)' for i in range(3, N+1)])}))"

    constraints += ')'

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)