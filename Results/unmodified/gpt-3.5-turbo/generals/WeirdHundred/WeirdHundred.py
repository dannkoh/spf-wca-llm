def generate_constraints(N: int) -> str:
    constraints = ""
    for i in range(1, N+1):
        if i == 1:
            continue
        else:
            constraints += f" (>= in{i} {100*i})"
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(f"(assert (and (not (= in0 1)) (= in0 0)) {constraints})")