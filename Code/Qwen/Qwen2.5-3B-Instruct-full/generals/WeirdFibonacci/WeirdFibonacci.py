def generate_constraints(N: int) -> str:

    if N == 1:
        return ""
    elif N == 2:
        return ""
    else:
        constraints = ""
        constraints += "(assert (<= in0 100))\n"
        constraints += "(assert (= in1 in0))\n"
        for i in range(2, N):
            constraints += "(assert (<= in" + str(i) + " 100))\n"
            constraints += "(assert (= in" + str(i) + " ( +  in" + str(i-1) + " in" + str(i-2) + ")))\n"
        return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)