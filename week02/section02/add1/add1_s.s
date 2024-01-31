.global add1_s          # use assembler directive .global to make a linkable name

                        # a0 contains the integer we want to increment
add1_s:                 # a label can mark beginning of a function
    add t0, a0, 1       # t0 = a0 + 1
    mv a0, t0           # a0 = t0. Sets up ret val for caller
    ret                 # ret val must be in a0, ret
    
