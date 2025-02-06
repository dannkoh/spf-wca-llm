def generate_constraints(N: int) -> str:
    constraints = []
    for i in range(N):
        for j in range(i + 1, N):
            constraints.append(f"(not (= in{i} in{j}))")
    
    # Join all constraints with 'and'
    constraints_str = " ".join(constraints)
    return f"(assert (and {constraints_str}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)