def generate_constraints(N):
    constraints = "(assert (and "
    
    # Add constraints for each input character
    for i in range(N):
        # Ensure the character is not '@', '#', or '$'
        constraints += f"(and (not (= in{i} 64)) (not (= in{i} 35)) (not (= in{i} 36))) "
        
        # Ensure exactly one character is '%'
        if i == N - 1:
            constraints += f"(or "
        constraints += f"(= in{i} 37) "
        if i == N - 1:
            constraints += "))"
    
    # Close the main and expression
    constraints += "))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)