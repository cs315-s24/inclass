.global slen_s

slen_s:
    mv t0, zero         # use t0 as running length
loop:
    lb t1, (a0)         # t1 = *str
    beq t1, zero, done  # have we found the '\0'
    addi t0, t0, 1      # increment length
    addi a0, a0, 1      # walk ptr to next char
    j loop              # go again
done:
    mv a0, t0           # set up len ret val in a0
    ret
