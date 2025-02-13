def generate_constraints(N: int) -> str:
    constraints = ""
    if N >= 3:
        constraints += "(assert (= in2 0))\n"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)