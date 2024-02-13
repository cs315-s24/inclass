.global fact_s

# a0 contains the number whose factorial we want
fact_s:
    addi sp, sp, -16        # alloc stack space for ra and a0
    sd ra, (sp)             # preserve ra

    li t0, 1                # set up for compare
    bgt a0, t0, recurse     # n > 1, recurse
    mv a0, t0               # base case
    j done
    
recurse:
    sd a0, 8(sp)            # preserve n at sp+8
    addi a0, a0, -1         # set up function arg for recursion
    call fact_s
    ld a1, 8(sp)            # restore n
    mul a0, a0, a1          # n * ret val

done:
    ld ra, (sp)             # restore ra
    addi sp, sp, 16         # dealloc stack space
    ret
