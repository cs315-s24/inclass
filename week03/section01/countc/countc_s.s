.global countc_s

# findc_s returns the index of a1 (ch) in a0 (str)
findc_s:
    li t0, 0        # use t0 for index
find_loop:
    lb t1, (a0)     # t1 = *str
    beq t1, zero, found_null
    beq t1, a1, find_done
    addi t0, t0, 1  # increment index
    addi a0, a0, 1  # walk str to next char
    j find_loop
found_null:
    li t0, -1       # set up "not found" in t0
find_done:
    mv a0, t0       # set up ret val in a0
    ret

# countc_s returns the count of a1 (ch) in a0 (str)
countc_s:
    addi sp, sp, -8
    sd ra, (sp)

    li t0, 0            # use t0 for count
count_loop:
    lb t1, (a0)         # t1 = *str
    beq t1, zero, count_done
    
    addi sp, sp, -24
    sd a0, (sp)         # preserve a0 across findc_s
    sd t0, 8(sp)
    sd t1, 16(sp)
    call findc_s
    mv t2, a0           # t2 == index
    ld a0, (sp)
    ld t0, 8(sp)
    ld t1, 16(sp)
    addi sp, sp, 24

    li t3, -1           # if index == -1
    beq t2, t3, count_done

    addi t0, t0, 1      # increment count
    add a0, a0, t2      # str += index
    addi a0, a0, 1      # str += 1
    j count_loop

count_done: 
    
    ld ra, (sp)
    addi sp, sp, 8

    mv a0, t0       # set up count ret val
    ret
