def generate_constraints(N: int) -> str:

    if N == 1:
        return ""
    elif N == 2:
        return "(assert (> in1 in2))"
    else:
        constraints = ""
        for i in range(1, N-1):
            constraints += f"(assert (<= in{i} in{i+1}))"
        constraints += f"(assert (> in{N-1} inN))"
        return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)