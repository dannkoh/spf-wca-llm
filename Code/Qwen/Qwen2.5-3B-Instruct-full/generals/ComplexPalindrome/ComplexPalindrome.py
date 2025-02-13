def generate_constraints(N: int) -> str:

    if N == 1:
        return ""
    else:
        constraints = ""
        for i in range(N):
            constraints += f"(assert (< {chr(97 + i)} {chr(97 + ((i + 1) % N))}))\n"
            if N % 2 == 1 and i == N // 2:
                constraints += f"(assert (< {chr(97 + N - 1)} {chr(97 + 0)}))\n"
        return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)