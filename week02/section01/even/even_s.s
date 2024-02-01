.global even_s

# a0 contains a number we want to know is even or odd

even_s:
    li t0, 1            # default even = true
    and t0, a0, t0      # bitwise AND with 1
    beq t0, zero, even  # if AND result is zero, it's even
    li t0, 1            # a0 was odd
even:
    mv a0, t0           # set up return value
    ret
