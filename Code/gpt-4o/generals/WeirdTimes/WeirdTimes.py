def generate_constraints(N):
    constraints_list = []
    
    if N > 1:
        for i in range(1, N):
            constraints_list.append(f"( = in{i} ( * in0 {i+1}))")
        
    constraints = "(assert " + ("(and " * (N-2) if N > 2 else "") + " ".join(constraints_list) + (")" * (N-2) if N > 2 else "") + ")" if N > 1 else ""
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)