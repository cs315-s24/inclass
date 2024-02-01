.global loop_s

# a0 contains the loop limit value

loop_s:
    mv t0, zero         # t0 holds return count

loop:
    ble a0, zero, done  # break when n <= 0
    addi t0, t0, 1      # count++
    addi a0, a0, -1     # n--
    j loop

done:
    mv a0, t0           # set up count ret val in a0
    ret
