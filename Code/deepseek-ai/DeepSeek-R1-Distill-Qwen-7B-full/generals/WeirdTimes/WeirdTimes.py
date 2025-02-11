def generate_constraints(N: int) -> str:
    if N == 1:
        return ""
    constraints = []
    for i in range(1, N):
        constraints.append(f"( = in{i} ( * in0 {i+1} ))")
    if not constraints:
        return ""
    result = f"(assert ("
    result += " and ".join(constraints)
    result += "))"
    return result

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)