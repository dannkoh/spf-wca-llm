def generate_constraints(N: int) -> str:
    import re
    L_I = int(input("L="))
    L = L_I * 100
    constraints = '( and (<> 1 L) and (and ((and (>= visibility_L 100) (<= (L_1 - 100))) (<= (L_2 - 100)) (and (<= (L_3 - 100)) (<= (L_4 - 100)) (<= (L_5 - 100)) (<= (L_6 - 100)) (<= (L_7 - 100)) (<= (L_8 - 100)) (<= (L_9 - 100)))))'
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)