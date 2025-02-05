def generate_constraints(N):
    if N == 1:
        return ""
    elif N == 2:
        return "(assert ( <  in1 in0))"
    
    # Starting off with the first and inner nesting constraints
    constraints = "( <  in0 in1)"
    for i in range(1, N - 1):
        constraints = f"(and {constraints} ( <  in{i} in{i+1}))"
    
    # Attach the outermost comparison for the last wrap-around condition
    full_constraints = f"(and {constraints} ( <  in{N-1} in0))"
    
    return f"(assert {full_constraints})"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)