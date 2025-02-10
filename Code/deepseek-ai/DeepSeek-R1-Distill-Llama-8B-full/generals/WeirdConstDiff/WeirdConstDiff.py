def generate_constraints(N: int) -> str:
    if N < 3:
        return ""
    conditions = []
    for i in range(2, N):
        condition = f'( = ( - in{i+1} in{i}) ( - in{i} in{i-1}))'
        conditions.append(condition)
    if len(conditions) == 1:
        return f'(assert {conditions[0]})'
    else:
        return f'(assert (and { " ".join(conditions) }))'

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)