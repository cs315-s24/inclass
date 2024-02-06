.global add1_s

# a0 contains the address of an array of integers (words)
# a1 contains the length of the array

add1_s:
    mv t0, zero         # t0 is the loop index variable
loop:
    beq t0, a1, done
    lw t1, (a0)         # load a word-size (4 bytes, 32 bits) value into t1
    addi t1, t1, 1      # increment the value we loaded
    sw t1, (a0)         # put the incremented value back into the array
    addi a0, a0, 4      # walk a0 forward to the next 4-byte int
    addi t0, t0, 1      # increment loop index variable
    j loop

done:
    ret
