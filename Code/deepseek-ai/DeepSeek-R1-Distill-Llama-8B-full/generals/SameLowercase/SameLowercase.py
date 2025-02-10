def generate_constraints(N: int) -> str:
    clauses = []
    for i in range(N):
        clauses.append('(>= in{}'.format(i) +'97)')
        clauses.append('(<= in{}'.format(i) +'122)')
    return '(assert (and {}))'.format(' and '.join(clauses))

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)