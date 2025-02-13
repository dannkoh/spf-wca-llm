def generate_constraints(N: int) -> str:
    vars = [f"in{i}" for i in range(N)]
    def generate_constraints_helper(N, level, constraints):
        if N == 1:
            return f"( <  {vars[0]} 100)"
        else:
            new_constraint = f"( <  {vars[-1]} 100)"
            new_level = level + 1
            new_N = N - 1
            return f"((and {constraints} {new_constraint})"
    result = ""
    for i in range(N, 0, -1):
        result = generate_constraints_helper(i, 0, result)
    return f"(assert ({result}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)