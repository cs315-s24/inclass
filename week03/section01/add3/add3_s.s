.global add3_s

add2_s:
    add a0, a0, a1
    ret

# a0, a1, a2: numbers we want to add
add3_s:
                            # prologue
    addi sp, sp, -8         # alloc space for ra (8 bytes)
    sd ra, (sp)             # preserve ra

    call add2_s

    mv a1, a2               # set up c to add to first2
    call add2_s
                            # epilogue
    ld ra, (sp)             # restore ra
    addi sp, sp, 8          # dealloc stack space

    ret
