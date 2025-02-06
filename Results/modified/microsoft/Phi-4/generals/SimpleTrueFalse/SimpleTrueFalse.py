def generate_constraints(N: int) -> str:
    constraints = []
    for i in range(N):
        if i % 2 == 0:
            constraints.append(f"(= in{i} 1)")
        else:
            constraints.append(f"(= in{i} 0)")
    
    # Join all constraints with 'and'
    constraints_str = " ".join(constraints)
    return f"(assert (and {constraints_str}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)