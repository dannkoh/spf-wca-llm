def generate_constraints(N):
    constraints = "(assert (and"
    
    # Determine the largest odd-indexed element and smallest even-indexed element
    if N % 2 == 0:
        largest_odd_index = N - 2
        smallest_even_index = 0
    else:
        largest_odd_index = N - 1
        smallest_even_index = 0
    
    # Add the constraint for the largest odd-indexed element < smallest even-indexed element
    constraints += f" ( <  in{largest_odd_index} in{smallest_even_index})"
    
    # Add constraints for each even-indexed element < element two positions ahead
    for i in range(0, N - 2, 2):
        constraints += f" ( <  in{i} in{i+2})"
    
    constraints += "))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)