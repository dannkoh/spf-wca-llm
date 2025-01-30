def generate_constraints(N):
    constraints = ""
    for i in range(N):
        value = 1 if i % 2 == 0 else 0
        # nesting the constraints within each other using 'and' operation
        constraints = "(and (= in{} {}) {})".format(i, value, constraints)
    return "(assert {})".format(constraints)

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)