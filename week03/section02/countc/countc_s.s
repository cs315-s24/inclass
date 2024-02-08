.global countc_s

# findc_s returns the index of a1 (ch) in a0 (str)
findc_s:
    li t1, 0                # use t1 for index
find_loop:
    lb t0, (a0)             # t0 = *str
    beq t0, zero, find_null
    beq t0, a1, find_done 
    addi t1, t1, 1          # increment index
    addi a0, a0, 1          # walk str to next
    j find_loop
find_null:
    li t1, -1               # not found
find_done: 
    mv a0, t1               # set up index ret val
    ret

# countc_s returns the count of a1 (ch) in a0 (str)
countc_s:
    addi sp, sp, -8
    sd ra, (sp)             # preserve ra
    
    li t0, 0                # use t0 for count
count_loop:
    lb t1, (a0)             # t1 = *str
    beq t1, zero, count_done # reached '\0'?

    addi sp, sp, -16        # space for a0
    sd a0, (sp)             # *sp = a0
    sd t0, 8(sp)
    call findc_s
    mv a2, a0               # move ret val aside
    ld a0, (sp)
    ld t0, 8(sp)
    addi sp, sp, 16

    li t2, -1
    beq t2, a2, count_done
    addi t0, t0, 1          # count++
    add a0, a0, a2          # str += index
    addi a0, a0, 1          # str += 1
    j count_loop

count_done:
    mv a0, t0               # set up ret val
    ld ra, (sp)             # restore ra
    addi sp, sp, 8          # deallocate
    ret
