from typing import Tuple
from z3 import *

def generate_constraints(N: int) -> str:
    constraints = ""
    for i in range(1, N):
        # Ensure that consecutive elements are either equal or one greater than the previous one
        constraints += f"(assert (or (= in{i} in{i-1}) (= (bvadd in{i-1} (bv1) in{i}) 0)))\n"
    
    # Ensure the array is traversable by the modulo operation
    for i in range(2, N-1):
        constraints += f"(assert (or (= (bvmod in{i+1} in{i}) 1) (= (bvmod in{i+1} in{i}) 0)))\n"

    return constraints

# Example usage
N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)