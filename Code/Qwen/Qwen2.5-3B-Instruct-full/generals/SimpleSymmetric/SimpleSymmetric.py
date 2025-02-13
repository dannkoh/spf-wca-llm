def generate_constraints(N: int) -> str:

    constraints = ""
    for i in range(1, N + 1):
        for j in range(1, i + 1):
            if j == i:
                constraints += f'(assert (= in{i}x{j} 100)   ;; Constant upper limit for N = {N}\n'
            else:
                constraints += f'(assert (<= in{i}x{j} in{i}x{j-1})\n'

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)