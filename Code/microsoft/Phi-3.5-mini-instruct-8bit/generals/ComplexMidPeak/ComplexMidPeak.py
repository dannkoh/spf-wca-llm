def generate_constraints(N):
    constraints = "(assert (and "
    mid = (N + 1) // 2  # This is equivalent to Math.ceil(N/2)

    # First half: strictly increasing
    for i in range(mid - 1):
        constraints += f"( <  in{i} in{i+1}) "

    # Second half: strictly decreasing
    for i in range(mid - 1, N - 1):
        constraints += f"( >  in{i} in{i+1}) "

    constraints += "))"  # Close the and and assert
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)