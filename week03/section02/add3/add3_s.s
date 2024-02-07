.global add3_s

# a0, a1 contain numbers to add
add2_s:
    add a0, a0, a1
    ret

# a0, a1, a2 contain numbers to add
add3_s:
                        # prologue
    addi sp, sp, -8     # allocate 8 bytes (1 reg worth) on stack
    sd ra, (sp)         # preserve ra on the stack
    
    call add2_s

    mv a1, a2           # set up the third number to call add2_s again
    call add2_s
                        # epilogue
    ld ra, (sp)         # restore ra
    addi sp, sp, 8      # deallocate stack space

    ret
