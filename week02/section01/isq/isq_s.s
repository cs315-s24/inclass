.global isq_s


isq_s:
    li t0, 0        # t0 = 0. set up false as default ret val
    li t1, 'q'
    bne a0, t1, skip_over_true
    li t0, 1        # set up true as ret val
skip_over_true:
    mv a0, t0       # set up ret val in a0
    ret
    
# isq_s:
#     li t0, 'q'      # ASCII 'q'
#     beq a0, t0, isq_true
#     li a0, 0        # false
#     ret
# 
# isq_true:
#     li a0, 1        # true
#     ret
