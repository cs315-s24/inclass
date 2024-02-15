.global countc_s

# a0 contains the string
# a1 contains the char we want to count

countc_s:
    addi sp, sp, -16
    sd ra, 8(sp)

    mv t1, zero             # t1 is count
    lb t0, (a0)             # t0 = *s
    beq t0, zero, done      # reached null term?
    sd t0, (sp)             # preserve t0

    addi a0, a0, 1          # set up s+1 as func arg
    call countc_s
    ld t0, (sp)             # restore t0 since it got overwritten
    bne t0, a1, done        # *s != c, do nothing
    addi t1, a0, 1          # t1 = new_count++

done:
    mv a0, t1               # set up t1 count as ret val
    ld ra, 8(sp)
    addi sp, sp, 16
    
    ret
