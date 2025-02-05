def generate_constraints(N):
    constraints = ""

    for i in range(4, N + 1):
        if i % 3 == 1:
            if constraints == "":
                constraints += '(assert  ( =  in{0} 0))'.format(i - 1)
            else:
                constraints = '(assert (and {0}  ( =  in{1} 0)))'.format(constraints[8:-1], i - 1)

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)