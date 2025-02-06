def generate_constraints(N: int) -> str:
    if N == 1:
        return ''  # No constraints for N=1
    
    # Base constraint: (not (= in0 1)) and (= in0 0)
    constraints = "(not ( = in0 1)) ( = in0 0)"
    
    # Add constraints for in[i] >= 100 for i in range 1 to N-1
    for i in range(1, N):
        constraints += f" ( >= in{i} 100)"
    
    return f"(assert (and {constraints}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)