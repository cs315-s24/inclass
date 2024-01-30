# use .global assembler directive to make a global symbol for this function

.global add1_s

# a0 contains the integer to which we want to add one
# sum goes in a0

add1_s:               # functions start with labels, i.e. name followed by a colon
    addi t0, a0, 64   # t0 = a0 + 1
    mv a0, t0         # set up ret val in a0
    ret               # return to caller
