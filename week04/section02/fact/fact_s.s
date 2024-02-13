.global fact_s

fact_s:
    addi sp, sp, -16
    sd ra, (sp)             # preserve ra
    
    li t0, 1
    bne a0, t0, recurse     # n != 1
    mv a0, t0               # set up ret val
    j done 

recurse:
    sd a0, 8(sp)            # preserve n
    addi a0, a0, -1         # n - 1
    call fact_s
    mv t0, a0               # save ret val
    ld a0, 8(sp)
    mul a0, a0, t0          # n * fact_s()

done:
    ld ra, (sp)             # restore ra
    addi sp, sp, 16
    ret
    
