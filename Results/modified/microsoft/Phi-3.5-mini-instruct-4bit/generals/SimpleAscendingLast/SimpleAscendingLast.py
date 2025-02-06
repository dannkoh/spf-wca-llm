def generate_constraints(N):
    constraints = []
    for i in range(N):
        if i == N - 1:
            constraints.append(f"( <  in{i} in0)")
        else:
            constraints.append(f"( <  in{i} in{i+1})")
    
    # Join all constraints with 'and'
    constraints_str = " ".join(constraints)
    return f"(assert (and {constraints_str}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)