def generate_constraints(N):
    constraints = []
    
    for i in range(N):
        if i % 2 == 0:
            if i + 2 < N:
                constraints.append(f"(assert (>= (a{i}) (a{i+2})))")
            if i + 3 < N:
                constraints.append(f"(assert (>= (a{i}) (a{i+3})))")
        else:
            if i - 1 >= 0:
                constraints.append(f"(assert (>= (a{i}) (a{i-1})))")
    
    return " ".join(constraints)

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)