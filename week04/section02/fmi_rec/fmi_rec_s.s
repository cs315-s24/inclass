.global fmi_rec_s

fmi_rec_s:
    addi sp, sp, -8         # prologue
    sd ra, (sp)             # preserve ra

    mv t0, a3               # max_new = max_idx
    bge a2, a1, done        # if (idx >= len)

    li t2, 4                # elems are 4 bytes wide
    mul t1, a2, t2          # t1 = offset of idx'th elem
    add t1, t1, a0          # t1 = &arr[idx]
    lw t1, (t1)             # t1 = arr[idx]

    mul t3, a3, t2          # offset of max_idx'th elem
    add t3, t3, a0          # t3 = &add[max_idx]
    lw t3, (t3)             # t3 = arr[max_idx]

    bge t3, t1, not_max
    mv t0, a2               # new_max = idx
not_max:
    addi a2, a2, 1          # idx + 1
    mv a3, t0               # set up max_new
    call fmi_rec_s
    mv t0, a0               # ret val
done:
    mv a0, t0               # set up ret val
    ld ra, (sp)             # restore ra
    addi sp, sp, 8          # dealloc stack
    ret
