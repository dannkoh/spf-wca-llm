def generate_constraints(N):
    """Generate constraints in SMT-LIB format."""

    mod_constraints = []
    put_get_constraints = []
    
    # loop to create all required statements
    for i in range(N):
        # create put MOD constraints
        mod_constraints.append(f"( = 0 (mod ( + put{i}_1 put{i}_0) {N}))")
        # create inequality between putX_0 and get0
        put_get_constraints.append(f"(not ( = put{i}_0 get0))")
    
    # create get MOD constraint
    mod_constraints.append(f"( = 0 (mod ( + get1 get0) {N}))")

    # join all constraints with AND operator
    constraints = f"(assert (and {' '.join(mod_constraints + put_get_constraints)}))"

    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)