def generate_constraints(N: int) -> str:
    if N >= 3:
        return "(assert (and (= in2 0)))"
    else:
        return ""
N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)