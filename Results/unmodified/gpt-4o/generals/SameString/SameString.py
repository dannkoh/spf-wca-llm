def generate_constraints(N):
    conditions = ' '.join([f"(= in{i} 120)" for i in range(N)])
    constraints = f"(assert (and {conditions}))" if N > 0 else "(assert true)"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)