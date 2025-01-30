def generate_constraints(N):
    constraints = []

    # For N = 1, return an empty string
    if N == 1:
        return ""

    # Generate a pair of assertions for each i
    for i in range(N-1):
        if i % 2 == 0: # If the index is even
            constraints.append(' ( =  in' + str(i) + ' in' + str(i+1) + ')')
        else: # If the index is odd
            constraints.append(' ( <  in' + str(i) + ' in' + str(i+1) + ')')

    # Combine all constraints and return
    assert_clause = '(assert (and' + ''.join(constraints) + '))'
    return assert_clause

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)