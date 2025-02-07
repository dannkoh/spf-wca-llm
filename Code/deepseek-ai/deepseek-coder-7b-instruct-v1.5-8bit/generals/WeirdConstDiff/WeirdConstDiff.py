def generate_constraints(N: int) -> str:
    if N < 3:
        return "None"
    else:
        constraints = "(assert "
        for i in range(2, N):
            constraints += "(= (- in{} in{}) (- in{} in{}))"
            if i!= N-1:
                constraints += " (assert "
        constraints += ")"
        return constraints.format(*[str(i) for i in range(N, 0, -1)])

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)