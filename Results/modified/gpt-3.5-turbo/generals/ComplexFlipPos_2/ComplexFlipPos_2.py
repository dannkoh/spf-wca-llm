def generate_constraints(N: int) -> str:
    constraints = ""
    for i in range(N-1):
        temp_constraint = f"(and (< in{i+1} in{i})"
        if i < N-2:
            temp_constraint += f" (< in{i} in{i+2}))"
        else:
            temp_constraint += ")"
        if constraints == "":
            constraints = temp_constraint
        else:
            constraints = f"(and {constraints} {temp_constraint})"
    return f"(assert {constraints})"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)