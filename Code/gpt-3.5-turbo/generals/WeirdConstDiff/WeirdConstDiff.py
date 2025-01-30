def generate_constraints(N):
    constraints = ""
    for i in range(2, N):
        constraint = f"(= (- in{i} in{i-1}) (- in{i-1} in{i-2}))"
        constraints = f"(and {constraint} {constraints})"
    
    return f"(assert {constraints})"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)