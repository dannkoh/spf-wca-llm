def generate_constraints(N):
    constraints = "(assert (and "
    for i in range(N):
        if i == N - 1:
            # Last element should be less than the first
            constraints += f" ( <  in{i} in0) "
        else:
            # Each element should be less than the next
            constraints += f" ( <  in{i} in{i+1}) "
    constraints += "))"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)