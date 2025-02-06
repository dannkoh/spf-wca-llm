def generate_constraints(N: int) -> str:
    if N == 1:
        return ""  # No constraints for N=1
    elif N == 2:
        return "(assert ( < in1 in0))"
    elif N == 3:
        return "(assert (and ( < in0 in2) ( < in1 in0)))"
    elif N == 4:
        return "(assert (and (and ( < in0 in3) ( < in1 in0)) ( < in3 in2)))"
    elif N == 5:
        return "(assert (and (and (and ( < in0 in3) ( < in1 in0)) ( < in2 in4)) ( < in3 in2)))"
    elif N == 6:
        return "(assert (and (and (and (and ( < in0 in3) ( < in1 in0)) ( < in2 in5)) ( < in3 in2)) ( < in5 in4)))"
    elif N == 7:
        return "(assert (and (and (and (and (and ( < in0 in3) ( < in1 in0)) ( < in2 in5)) ( < in3 in2)) ( < in4 in6)) ( < in5 in4)))"
    elif N == 8:
        return "(assert (and (and (and (and (and (and ( < in0 in3) ( < in1 in0)) ( < in2 in5)) ( < in3 in2)) ( < in4 in7)) ( < in5 in4)) ( < in7 in6)))"
    elif N == 9:
        return "(assert (and (and (and (and (and (and (and ( < in0 in3) ( < in1 in0)) ( < in2 in5)) ( < in3 in2)) ( < in4 in7)) ( < in5 in4)) ( < in6 in8)) ( < in7 in6)))"
    elif N == 10:
        return "(assert (and (and (and (and (and (and (and (and ( < in0 in3) ( < in1 in0)) ( < in2 in5)) ( < in3 in2)) ( < in4 in7)) ( < in5 in4)) ( < in6 in9)) ( < in7 in6)) ( < in9 in8)))"
    
N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)