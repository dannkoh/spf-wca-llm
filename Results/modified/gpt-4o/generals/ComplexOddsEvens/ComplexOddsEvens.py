def generate_constraints(N):

    if N == 1:
        return "None"

    constraints = []
    
    # First condition depends on whether N is even or odd
    if (N - 1) % 2 == 0:
        # Even case
        constraints.append(f"( < in{N-2} in0 )")
    else:
        # Odd case
        constraints.append(f"( < in{N-1} in0 )")
    
    # Chain like (in0 < in2), (in1 < in3), ..., (in[N-4] < in[N-2]) or similar
    for i in range(N - 2):
        if i + 2 < N:
            constraints.append(f"( < in{i} in{i+2} )")
    
    # Join constraints in SMT-LIB format using 'and'
    constraints_str = " ".join(constraints)
    result = f"(assert (and {constraints_str}))"
    
    return result

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)