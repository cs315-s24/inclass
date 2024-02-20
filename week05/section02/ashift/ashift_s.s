.global ashift_s

# a0: arr of 32-bit words
# a1: count
ashift_s:
    li t0, 0            # loop index variable
loop:
    beq t0, a1, done    # reached end?
    slli t1, t0, 2      # t1 = t0 * 4 (byte offset of t0'th elem)
    add t2, a0, t1      # t1 is the address of t0'th elem
    lw t1, (t2)         # t1 is the value of arr[t0]
    srai t1, t1, 1      # t1 = t1 / 2
    sw t1, (t2)         # arr[t0] = arr val
    addi t0, t0, 1      # increment loop index
    j loop
done:
    ret
