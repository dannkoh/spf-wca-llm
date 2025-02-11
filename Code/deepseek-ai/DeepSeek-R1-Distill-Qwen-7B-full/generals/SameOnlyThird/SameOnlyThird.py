def generate_constraints(N: int) -> str:
    if N < 3:
        return ""
    else:
        return "(assert (= in2 0))"
    
N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)