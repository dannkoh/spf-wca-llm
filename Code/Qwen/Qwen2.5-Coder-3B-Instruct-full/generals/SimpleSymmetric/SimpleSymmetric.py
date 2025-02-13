from z3 import *

def generate_constraints(N: int) -> str:
    s = Solver()
    
    # Define the matrix variables
    A = [[Int(f'in{i}x{j}') for j in range(N)] for i in range(N)]
    
    # Ensure symmetry: A[i][j] = A[j][i] for all i, j
    symmetry_constraint = [s.add(A[i][j] == A[j][i]) for i in range(N) for j in range(i+1, N)]
    
    # Ensure distinct values within the matrix
    distinct_constraint = [s.add(A[i][j] != A[p][q]) for i in range(N) for j in range(N) for p in range(N) for q in range(N) if i != p and j != q]
    
    # Check if constraints are satisfied
    if s.check() == sat:
        model = s.model()
        constraints = ""
        for row in A:
            for col in row:
                constraints += f"(assert (= {col} {model[col]}))\n"
        return constraints
    
    return ""

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)