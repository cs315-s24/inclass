.global even_s

# a0 contains a number that we want to know is odd or even

even_s:
    andi t0, a0, 1          # AND with 1 results in 1 if odd, 0 if even
    beq t0, zero, even
    li a0, 0
    ret

even:
    li a0, 1
    ret
