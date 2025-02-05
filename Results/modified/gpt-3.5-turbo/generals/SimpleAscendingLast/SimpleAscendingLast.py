def generate_constraints(N):

    constraints = ""
    
    if N == 1:
        return constraints

    for i in range(N):
        if i == N-1:
            constraints += f"( < in{i} in0)"
        else:
            constraints += f"(and ( < in{i} in{(i+1) % N}))"
        if i < N-1:
            constraints += " "

    constraints = "(assert (and " + constraints + "))"

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)