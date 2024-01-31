.global eq3_s

eq3_s:
    li t0, 3              # what to compare to
    li t1, 0              # set up false
    bne a0, t0, neq       # branch if a0 != t0
    li t1, 1              # true
neq:
    mv a0, t1             # set up ret val in a0
    ret

# eq3_s:
#     li t0, 3            # t0 = 3 "load immediate"
#     beq a0, t0, eq_yes  # if a0 == t0, branch to eq_yes
#     li a0, 0            # false
#     ret
# 
# eq_yes:
#     li a0, 1            # true
#     ret
