def generate_constraints(N: int) -> str: 
 constraints = ""
 if N <= 1: return ""
 base = "assert (<= "
 for i in range(N):
    constraints += f"{i} 100)"
 constraints += ")"
 return constraints




N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)