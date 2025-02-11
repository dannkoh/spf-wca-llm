def generate_constraints(N: int) -> str:
    if N < 3:
        return ""
    constraints = ""
    for i in range(2, N):
        var1 = f"in{i}"
        var2 = f"in{i-1}"
        var3 = f"in{i-2}"
        constraint = f"(= ( - {var1} {var2}) ( - {var2} {var3})"
        if i!= 2:
            constraints += " and "
        constraints += constraint
    if not constraints:
        return ""
    return f"(assert {constraints})"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)