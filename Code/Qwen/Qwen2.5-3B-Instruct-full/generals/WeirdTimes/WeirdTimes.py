def generate_constraints(N: int) -> str:
    constraints = ""
    for i in range(1, N + 1):
        constraints += f'(assert (= in{i} ( * in0 {i}))) '
    return f"(assert (and {constraints.strip()}))"

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)

# Example 1:
# N=1 -> '(assert (= in1 ( * in0 1)))'
# Example 2:
# N=2 -> '(assert (= in1 ( * in0 2)))'
# Example 3:
# N=3 -> '(assert (= in1 ( * in0 2)) (= in2 ( * in0 3)))'
# Example 4:
# N=4 -> '(assert (= in1 ( * in0 2)) (= in2 ( * in0 3)) (= in3 ( * in0 4)))'
# Example 5:
# N=5 -> '(assert (= in1 ( * in0 2)) (= in2 ( * in0 3)) (= in3 ( * in0 4)) (= in4 ( * in0 5)))'
# Example 6:
# N=6 -> '(assert (= in1 ( * in0 2)) (= in2 ( * in0 3)) (= in3 ( * in0 4)) (= in4 ( * in0 5)) (= in5 ( * in0 6)))'
# Example 7:
# N=7 -> '(assert (= in1 ( * in0 2)) (= in2 ( * in0 3)) (= in3 ( * in0 4)) (= in4 ( * in0 5)) (= in5 ( * in0 6)) (= in6 ( * in0 7)))'
# Example 8:
# N=8 -> '(assert (= in1 ( * in0 2)) (= in2 ( * in0 3)) (= in3 ( * in0 4)) (= in4 ( * in0 5)) (= in5 ( * in0 6)) (= in6 ( * in0 7)) (= in7 ( * in0 8)))'
# Example 9:
# N=9 -> '(assert (= in1 ( * in0 2)) (= in2 ( * in0 3)) (= in3 ( * in0 4)) (= in4 ( * in0 5)) (= in5 ( * in0 6)) (= in6 ( * in0 7)) (= in7 ( * in0 8)) (= in8 ( * in0 9)))'
# Example 10:
# N=10 -> '(assert (= in1 ( * in0 2)) (= in2 ( * in0 3)) (= in3 ( * in0 4)) (= in4 ( * in0 5)) (= in5 ( * in0 6)) (= in6 ( * in0 7)) (= in7 ( * in0 8)) (= in8 ( * in0 9)) (= in9 ( * in0 10)))'