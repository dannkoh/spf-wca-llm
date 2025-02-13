def generate_constraints(N: int) -> str:

    if N == 1:
        return ""
    
    constraints = []
    for i in range(1, N+1):
        if i == 1:
            constraints.append("(assert (not (= in1 64)) (assert (not (= in1 35))) (assert (not (= in1 36))) (assert (not (= in1 37))))")
        else:
            constraints.append(f"(assert (not (= in{i} 64)) (assert (not (= in{i} 35))) (assert (not (= in{i} 36))) (assert (not (= in{i} 37))))")
    
    return "(and" + " ".join(constraints) + ")"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)