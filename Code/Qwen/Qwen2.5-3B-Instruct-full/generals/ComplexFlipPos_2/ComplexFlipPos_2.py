def generate_constraints(N: int) -> str:

    if N == 1:
        return ""
    constraints = ""
    for i in range(2, N+1):
        constraints += f"(assert (< in{i} in{i-1}))\n"
    constraints += f"(assert (< in0 in{i}))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)