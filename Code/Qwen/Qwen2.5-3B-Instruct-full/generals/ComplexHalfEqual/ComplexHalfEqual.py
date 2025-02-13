def generate_constraints(N: int) -> str:

    if N == 1:
        return ""

    constraints = ""
    for i in range(1, N):
        # Equality constraint if i is less than N/2
        if i < N // 2:
            constraints += f"(assert (= in{i} in{i+1}))\n"
        else:
            # Strict inequality constraints for remaining elements
            for j in range(i):
                constraints += f"(assert (< in{i} in{i+1}))\n"

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)