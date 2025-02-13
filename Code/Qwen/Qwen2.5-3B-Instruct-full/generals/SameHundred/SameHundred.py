def generate_constraints(N: int) -> str:

    # Do some logic here to return a SMT-LIB Format String e.g. (assert (and (op1 x y) (op2 x z))

    constraints = ""
    for i in range(N):
        constraints += f"(assert (<= in{i} 100)"
        if i < N - 1:
            constraints += " "
            constraints += "and"
    constraints += ")"

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)