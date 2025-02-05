def generate_constraints(N):
    if N == 1:
        return "(assert true)"
    elif N == 2:
        return "(assert true)"
    elif N == 3:
        return "(assert true)"
    elif N == 4:
        return "(assert true)"
    elif N == 5:
        return "(assert true)"
    elif N == 6:
        return "(assert true)"
    elif N == 7:
        return "(assert true)"
    elif N == 8:
        return "(assert true)"
    elif N == 9:
        return "(assert true)"
    elif N == 10:
        return "(assert true)"
    else:
        return "(assert true)"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)