def generate_constraints(N):
    constraints = ""
    for i in range(1, N + 1):
        constraint = "(assert (and"
        constraint += " (= 0 (mod (+ put0_1 put0_0) {}))".format(i)
        constraint += " (= 0 (mod (+ get1 get0) {}))".format(i)
        constraint += " (not (= put0_0 get0))"
        if i > 1:
            for j in range(1, i):
                constraint += " (not (= put{}_0 get0))".format(j)
        constraint += "))"
        constraints += constraint + "\n"
    return constraints

print(generate_constraints(10))