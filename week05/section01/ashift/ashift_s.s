.global ashift_s

# a0: arr of 32-bit integers
# a1: count
ashift_s:
    li t0, 0                # t0 is loop index
loop:
    beq t0, a1, finished    # reached end
    slli t1, t0, 2          # t1 is the offset of the i'th element
    add t1, a0, t1          # t1 is the address of the i'th element
    lw t2, (t1)             # t2 is the value of the i'th element
    srai t2, t2, 1          # t2 is value >> 1 (or /2)
    sw t2, (t1)             # arr[i] = shifted value
    addi t0, t0, 1          # increment loop index
    j loop
finished:
    ret
