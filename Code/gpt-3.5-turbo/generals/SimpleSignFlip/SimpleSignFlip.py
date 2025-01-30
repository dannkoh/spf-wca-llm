def generate_constraints(N):
    constraints = ""

    if N == 1:
        return "None"

    if N == 2:
        return "(assert (= in0 in1))"

    if N >= 3:
        constraints += "(assert (and"
        
        constraints += f" (= in0 in1)"
        constraints += f" (< in1 in2)"

        for i in range(2, N-1):
            constraints += f" (= in{i} in{i+1})"
            constraints += f" (< in{i} in{i+1})"
        
        constraints += f" (< in{N-2} in{N-1})"

        constraints += "))"

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)