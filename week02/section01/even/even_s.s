.global even_s

# a0 contains a number we want to know is even or odd

even_s:
    li t1, 1            # t1 holds ret val, default true
    andi t0, a0, 1      # bitwise AND with 1
    beq t0, zero, even  # if AND result is zero, it's even
    li t1, 0            # a0 was odd so ret val = false
even:
    mv a0, t1           # set up return value
    ret                 # return to caller
