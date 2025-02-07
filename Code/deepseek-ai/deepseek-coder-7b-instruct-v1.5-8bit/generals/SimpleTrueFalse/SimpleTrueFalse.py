def generate_constraints(N: int) -> str:
    constraints = "(assert "
    for i in range(N):
        if i % 2 == 0:
            constraints += "(= (ite (= in{} 1) true false) (ite (= in{} 0) false true))".format(i, i)
        else:
            constraints += "(= (ite (= in{} 1) false true) (ite (= in{} 0) true false))".format(i, i)
        if i < N-1:
            constraints += " "
    constraints += ")"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)