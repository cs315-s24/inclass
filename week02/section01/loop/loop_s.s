.global loop_s

# a0 contains the count of times to loop

loop_s:
    mv t0, zero             # count = 0

loop:
    beq a0, zero, done      # if count == 0, we're done
    addi t0, t0, 1          # t0 = t0 + 1 (or t0++)
    addi a0, a0, -1         # decrement i
    j loop                  # unconditional branch

done:
    mv a0, t0               # set up return value in a0
    ret
