def generate_constraints(N: int) -> str:
    if N < 2:
        return ''
    clauses = []
    for i in range(N):
        for j in range(i + 1, N):
            clauses.append('(not (= in%d in%d))' % (i, j))
    if len(clauses) == 1:
        return '(assert %s)' % clauses[0]
    else:
        return '(assert (and %s))' %''.join(clauses)

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)