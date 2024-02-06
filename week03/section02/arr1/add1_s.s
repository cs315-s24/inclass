.global add1_s

# a0 contains the pointer to the array
# a1 contains the length of the array

add1_s:
    mv t0, zero         # t0 is the loop index variable
loop:
    beq t0, a1, done
    lw t1, (a0)         # t1 = *a0, loading a word-size value (4 bytes)
    addi t1, t1, 1      # increment the arr elem
    sw t1, (a0)         # *a0 = t1 (4 bytes)
    addi a0, a0, 4      # walk arr forward to next 4 byte value
    addi t0, t0, 1      # increments loop index variable
    j loop
done:
    ret
