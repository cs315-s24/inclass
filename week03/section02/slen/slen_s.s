.global slen_s

# a0 contains the pointer whose len we want
# to calculate

slen_s:
    mv t0, zero         # use t0 for length    
loop:
    lb t1, (a0)         # t1 = *str
    beq t1, zero, done  # have we reached '\0'
    addi t0, t0, 1      # increment length
    addi a0, a0, 1      # walk str to next char
    j loop
done:
    mv a0, t0           # set up len as ret val
    ret
    
