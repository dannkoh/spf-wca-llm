def generate_constraints(N):
    if N == 1:
        return ""
    constraints = "(assert (and "
    for i in range(0, N//2):
        constraints += '( < in{} in{}) '.format(i, N-i-1)
    constraints += '))'
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)