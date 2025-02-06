def generate_constraints(N):
    assert_conditions = []
    
    # Iterate over each input key for puts
    for i in range(N):
        # Condition to ensure key sum modulo N is zero
        assert_conditions.append(f"(= 0 (mod (+ put{i}_1 put{i}_0) {N}))")
        # Condition to ensure put key does not match get key
        assert_conditions.append(f"(not (= put{i}_0 get0))")
    
    # Get operation condition
    assert_conditions.append(f"(= 0 (mod (+ get1 get0) {N}))")
    
    # Combine all the conditions with 'and'
    constraints = f"(assert (and {' '.join(assert_conditions)}))"
    
    return constraints

N = int(input("N="))
constraints = generate_constraints(N)
print(constraints)