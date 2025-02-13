def generate_constraints(N: int) -> str:

    constraints = ""
    skipped_indices = set()

    for i in range(1, N+1):
        if i % 3 == 0:
            if i not in skipped_indices:
                constraints += f'(assert (= in{i} 0)\n'
                skipped_indices.add(i)

        if (i % 3 == 1 and i > 1) and (i-2) in skipped_indices:
            constraints += f'(assert (= in{i-2} 0)\n'
            skipped_indices.add(i-2)

        if (i % 3 == 2 and i-3 in skipped_indices):
            constraints += f'(assert (= in{i-3} 0)\n'
            skipped_indices.add(i-3)

    return constraints.rstrip("\n")

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)