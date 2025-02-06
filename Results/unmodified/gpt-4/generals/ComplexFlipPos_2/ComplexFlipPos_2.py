def generate_constraints(N: int) -> str:
    if N == 1:
        return 'None'
    else:
        constraints = []
        for i in range(N):
            if i % 2 == 0:
                if i+3 < N:
                    constraints.append(f'( <  in{i} in{i+3})') 
                elif i+2 < N:
                    constraints.append(f'( <  in{i} in{i+2})') 
            else:
                constraints.append(f'( <  in{i} in{i-1})')
        return "(assert (and " + " ".join(constraints) + "))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)