.global extend_s

# a0 contains a 32 bit value
# return a 64-bit sign-extended version

extend_s:
    slli a0, a0, 32
    srai a1, a0, 32
    mv a0, a1
    ret    
