def generate_constraints(N):
    constraints = "(assert (and "
    pairs = []
    
    # Generate all pairs (i, j) with i < j
    for i in range(N):
        for j in range(i + 1, N):
            pairs.append(f"(not (= in{i} in{j}))")
    
    # Join all pairs with 'and'
    constraints += " ".join(pairs) + "))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)