def generate_constraints(N):

    # Do some logic here to return a SMT-LIB Format String e.g. (assert (and (op1 x y) (op2 x z)))

    if N == 1:
        return "(assert true)"
    elif N == 2:
        return "(assert true)"
    elif N == 3:
        return "(assert (= in2 0))"
    elif N == 4:
        return "(assert (= in2 0))"
    elif N == 5:
        return "(assert (= in2 0))"
    elif N == 6:
        return "(assert (= in2 0))"
    elif N == 7:
        return "(assert (= in2 0))"
    elif N == 8:
        return "(assert (= in2 0))"
    elif N == 9:
        return "(assert (= in2 0))"
    elif N == 10:
        return "(assert (= in2 0))"
    else:
        return "(assert true)"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)